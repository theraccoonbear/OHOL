cd /opt/src/OneLife/server

if [ ! -e objects ]; then
	ln -s ../../OneLifeData7/objects .
fi

if [ ! -e transitions ]; then
	ln -s ../../OneLifeData7/transitions .
fi

if [ ! -e categories ]; then
	ln -s ../../OneLifeData7/categories .
fi
