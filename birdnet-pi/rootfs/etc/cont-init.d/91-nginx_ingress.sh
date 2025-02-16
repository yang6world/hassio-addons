#!/command/with-contenv bashio
# shellcheck shell=bash
set -e

#################
# NGINX SETTING #
#################

# Variables
ingress_port=$(bashio::addon.ingress_port)
ingress_interface=$(bashio::addon.ip_address)
ingress_entry=$(bashio::addon.ingress_entry)

# Quits if ingress is not active
if [ -z "$ingress_entry" ]; then
    bashio::log.warning "Ingress entry is not set, exiting configuration."
    sed -i "1a sleep infinity" /custom-services.d/02-nginx.sh
    exit 0
fi

bashio::log.info "Adapting for ingress"
echo "... setting up nginx"

# Check if the NGINX configuration file exists
nginx_conf="/etc/nginx/servers/ingress.conf"
if [ -f "$nginx_conf" ]; then
    sed -i "s/%%port%%/${ingress_port}/g" "$nginx_conf"
    sed -i "s/%%interface%%/${ingress_interface}/g" "$nginx_conf"
    sed -i "s|%%ingress_entry%%|${ingress_entry}|g" "$nginx_conf"
else
    bashio::log.error "NGINX configuration file not found: $nginx_conf"
    exit 1
fi

echo "... ensuring restricted area access"
echo "${ingress_entry}" > /ingress_url

# Modify PHP file safely
php_file="$HOME/BirdNET-Pi/scripts/common.php"
if [ -f "$php_file" ]; then
    sed -i "/function is_authenticated/a if (strpos(\$_SERVER['HTTP_REFERER'], '/api/hassio_ingress') !== false && strpos(\$_SERVER['HTTP_REFERER'], trim(file_get_contents('/ingress_url'))) !== false) { \$ret = true; return \$ret; }" "$php_file"
else
    bashio::log.error "PHP file not found: $php_file"
    exit 1
fi

echo "... adapting Caddyfile for ingress"
chmod +x /helpers/caddy_ingress.sh

# Correct script execution
/helpers/caddy_ingress.sh

# Update the Caddyfile if update script exists
caddy_update_script="$HOME/BirdNET-Pi/scripts/update_caddyfile.sh"
if [ -f "$caddy_update_script" ]; then
    sed -i "/sudo caddy fmt --overwrite/i /helpers/caddy_ingress.sh" "$caddy_update_script"
else
    bashio::log.error "Caddy update script not found: $caddy_update_script"
    exit 1
fi

