#!/usr/bin/with-contenv bashio

NPS_HOST=$(bashio::config "nps_host")
NPS_VKEY=$(bashio::config "nps_vkey")
NPS_TYPE=$(bashio::config "nps_type")

OTHER_ARGS=""

echo "Starting npc... $NPS_HOST "
/root/npc -server=$NPS_HOST -vkey=$NPS_VKEY -type=${NPS_TYPE} $OTHER_ARGS
