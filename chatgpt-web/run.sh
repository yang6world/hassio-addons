#!/usr/bin/with-contenv bashio

OPENAI_API_KEY="$(bashio::config 'openai_api_key')"
OPENAI_ACCESS_TOKEN="$(bashio::config 'openai_access_token')"
OPENAI_API_BASE_URL="$(bashio::config 'openai_api_base_url')"
OPENAI_API_MODEL="$(bashio::config 'openai_api_model')"
OPENAI_API_DISABLE_DEBUG="$(bashio::config 'openai_api_disable_debug')"
API_REVERSE_PROXY="$(bashio::config 'api_reverse_proxy')"
MAX_REQUEST_PER_HOUR="$(bashio::config 'max_request_per_hour')"
AUTH_SECRET_KEY="$(bashio::config 'auth_secret_key')"
SOCKS_PROXY_HOST="$(bashio::config 'socks_proxy_host')"
SOCKS_PROXY_PORT="$(bashio::config 'socks_proxy_port')"
SOCKS_PROXY_USERNAME="$(bashio::config 'socks_proxy_username')"
SOCKS_PROXY_PASSWORD="$(bashio::config 'socks_proxy_password')"
HTTPS_PROXY="$(bashio::config 'https_proxy')"
OTHER_ARGS=""

if [ -n "$OPENAI_API_KEY" ] && [ "$OPENAI_API_KEY" != "null" ]; then
  echo "OPENAI_API_KEY=$OPENAI_API_KEY" > ./.env
fi
if [ -n "$OPENAI_ACCESS_TOKEN" ] && [ "$OPENAI_ACCESS_TOKEN" != "null" ]; then
  echo "OPENAI_ACCESS_TOKEN=$OPENAI_ACCESS_TOKEN" >> ./.env
fi
if [ -n "$OPENAI_API_BASE_URL" ] && [ "$OPENAI_API_BASE_URL" != "null" ]; then
  echo "OPENAI_API_BASE_URL=$OPENAI_API_BASE_URL" >> ./.env
fi
if [ -n "$OPENAI_API_MODEL" ] && [ "$OPENAI_API_MODEL" != "null" ]; then
  echo "OPENAI_API_MODEL=$OPENAI_API_MODEL" >> ./.env
fi
if [ -n "$OPENAI_API_DISABLE_DEBUG" ] && [ "$OPENAI_API_DISABLE_DEBUG" != "null" ]; then
  echo "OPENAI_API_DISABLE_DEBUG=$OPENAI_API_DISABLE_DEBUG" >> ./.env
fi
if [ -n "$API_REVERSE_PROXY" ] && [ "$API_REVERSE_PROXY" != "null" ]; then
  echo "API_REVERSE_PROXY=$API_REVERSE_PROXY" >> ./.env
fi
echo "TIMEOUT_MS=100000" >> ./.env
if [ -n "$MAX_REQUEST_PER_HOUR" ] && [ "$MAX_REQUEST_PER_HOUR" != "null" ]; then
  echo "MAX_REQUEST_PER_HOUR=$MAX_REQUEST_PER_HOUR" >> ./.env
fi
if [ -n "$AUTH_SECRET_KEY" ] && [ "$AUTH_SECRET_KEY" != "null" ]; then
  echo "AUTH_SECRET_KEY=$AUTH_SECRET_KEY" >> ./.env
fi
if [ -n "$SOCKS_PROXY_HOST" ] && [ "$SOCKS_PROXY_HOST" != "null" ]; then
  echo "SOCKS_PROXY_HOST=$SOCKS_PROXY_HOST" >> ./.env
fi
if [ -n "$SOCKS_PROXY_PORT" ] && [ "$SOCKS_PROXY_PORT" != "null" ]; then
  echo "SOCKS_PROXY_PORT=$SOCKS_PROXY_PORT" >> ./.env
fi
if [ -n "$SOCKS_PROXY_USERNAME" ] && [ "$SOCKS_PROXY_USERNAME" != "null" ]; then
  echo "SOCKS_PROXY_USERNAME=$SOCKS_PROXY_USERNAME" >> ./.env
fi
if [ -n "$SOCKS_PROXY_PASSWORD" ] && [ "$SOCKS_PROXY_PASSWORD" != "null" ]; then
  echo "SOCKS_PROXY_PASSWORD=$SOCKS_PROXY_PASSWORD" >> ./.env
fi
if [ -n "$HTTPS_PROXY" ] && [ "$HTTPS_PROXY" != "null" ]; then
  echo "HTTPS_PROXY=$HTTPS_PROXY" >> ./.env
fi

echo "Starting chatgpt-web"

pnpm run prod
