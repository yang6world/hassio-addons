#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
# shellcheck disable=SC2015

# Install rpi video drivers
if bashio::config.true 'rpi_video_drivers'; then
    bashio::log.info "Installing Rpi graphic drivers"
    if [ "$PACKMANAGER" = "apk" ]; then
        apk add --no-cache "mesa-dri-vc4 mesa-dri-swrast mesa-gbm xf86-video-fbdev" &>/dev/null || (bashio::log.fatal "Error : $packagestoinstall not found")
    elif [ "$PACKMANAGER" = "apt" ]; then
        apt-get install -yqq --no-install-recommends "mesa*" &>/dev/null || (bashio::log.fatal "Error : $packagestoinstall not found")
    fi
fi

# Install specific apps
if bashio::config.has_value 'additional_apps'; then
    bashio::log.info "Installing additional apps :"
    # hadolint ignore=SC2005
    NEWAPPS=$(bashio::config 'additional_apps')
    for packagestoinstall in ${NEWAPPS//,/ }; do
        bashio::log.green "... $APP"
        if [ "$PACKMANAGER" = "apk" ]; then
            apk add --no-cache "$packagestoinstall" &>/dev/null || (bashio::log.fatal "Error : $packagestoinstall not found")
        elif [ "$PACKMANAGER" = "apt" ]; then
            apt-get install -yqq --no-install-recommends "$packagestoinstall" &>/dev/null || (bashio::log.fatal "Error : $packagestoinstall not found")
        elif [ "$PACKMANAGER" = "pacman" ]; then
            pacman --noconfirm -S "$packagestoinstall" &>/dev/null || (bashio::log.fatal "Error : $packagestoinstall not found")
        fi
    done
fi

# Set TZ
if bashio::config.has_value 'TZ'; then
    TIMEZONE=$(bashio::config 'TZ')
    bashio::log.info "Setting timezone to $TIMEZONE"
    ln -snf /usr/share/zoneinfo/"$TIMEZONE" /etc/localtime
    echo "$TIMEZONE" >/etc/timezone
fi || true

# Set keyboard
if bashio::config.has_value 'KEYBOARD'; then
    KEYBOARD=$(bashio::config 'KEYBOARD')
    bashio::log.info "Setting keyboard to $KEYBOARD"
    sed -i "1a export KEYBOARD=$KEYBOARD" /etc/s6-overlay/s6-rc.d/svc-web/run
    if [ -d /var/run/s6/container_environment ]; then printf "%s" "$KEYBOARD" > /var/run/s6/container_environment/KEYBOARD; fi
    printf "%s" "KEYBOARD=\"$KEYBOARD\"" >> ~/.bashrc
fi || true

# Set password
if bashio::config.has_value 'PASSWORD'; then
    bashio::log.info "Setting password to the value defined in options"
    PASSWORD=$(bashio::config 'PASSWORD')
    passwd -d abc
    echo -e "$PASSWORD\n$PASSWORD" | passwd abc
fi || true
