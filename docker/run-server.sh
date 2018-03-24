#!/bin/bash

if [ ! -d "/opt/src/data/settings" ]; then
	mkdir -p /opt/src/data/settings
	cp /opt/game/OneLife/server/settings/* /opt/src/data/settings/
fi

cd /opt/src/data
/opt/game/OneLife/server/OneLifeServer

