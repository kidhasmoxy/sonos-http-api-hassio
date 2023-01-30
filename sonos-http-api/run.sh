if [ ! -d /data/static ]; then
mkdir /data/static
fi

if [ ! -d /data/static/clips ]; then
mkdir /data/static/clips
chown -R node:node /data/static
fi

if [ ! -d /data/settings ]; then
mkdir /data/settings
fi
if [ ! -d /data/cache ]; then
mkdir /data/cache
chown -R node:node /data/cache
fi
if [ ! -d /data/presets ]; then
mkdir /data/presets
fi

if [ ! -f /data/presets/example.json ]; then
curl https://raw.githubusercontent.com/jishi/node-sonos-http-api/master/presets/example.json > presets/example.json
fi

if [ ! -f /data/settings/settings.json ]; then
echo {} > settings/settings.json
fi

npm start