#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

#################
# Create folder #
#################

DATABASELOCATION="/data"
echo "Updating folders structure"
mkdir -p "$DATABASELOCATION"/config
mkdir -p "$DATABASELOCATION"/influxdb
if [ -d /opt/scrutiny/config ]; then rm -r /opt/scrutiny/config; fi
if [ -d /opt/scrutiny/influxdb ]; then rm -r /opt/scrutiny/influxdb; fi
ln -s "$DATABASELOCATION"/config /opt/scrutiny
ln -s "$DATABASELOCATION"/influxdb /opt/scrutiny

###############################
# Migrating previous database #
###############################

if [ -f /data/scrutiny.db ]; then
    bashio::log.warning "Previous database detected, migration will start. Backup stored in /share/scrutiny.db.bak"
    cp /data/scrutiny.db /share/scrutiny.db.bak
    mv /data/scrutiny.db "$DATABASELOCATION"/config/
fi

######
# TZ #
######

# Align timezone with options
if bashio::config.has_value "TZ"; then
    TZ="$(bashio::config 'TZ')"
    bashio::log.info "Timezone : $TZ"
    sed -i "1a export TZ=$TZ" /etc/cont-init.d/10-timezone
fi

################
# CRON OPTIONS #
################

# Align update with options
FREQUENCY="$(bashio::config 'Updates')"
bashio::log.info "$FREQUENCY updates"

case "$FREQUENCY" in
    "Quarterly")
        sed -i "/customize the cron schedule/a export COLLECTOR_CRON_SCHEDULE=\"*/15 * * * *\"" /etc/cont-init.d/50-cron-config
        ;;

    "Hourly")
        sed -i "/customize the cron schedule/a export COLLECTOR_CRON_SCHEDULE=\"0 * * * *\"" /etc/cont-init.d/50-cron-config
        ;;

    "Daily")
        sed -i "/customize the cron schedule/a export COLLECTOR_CRON_SCHEDULE=\"0 0 * * *\"" /etc/cont-init.d/50-cron-config
        ;;

    "Weekly")
        sed -i "/customize the cron schedule/a export COLLECTOR_CRON_SCHEDULE=\"0 0 * * 0\"" /etc/cont-init.d/50-cron-config
        ;;
esac
