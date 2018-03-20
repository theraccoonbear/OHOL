if [ ! -e /opt/src/ticketID.cfg ]; then
	echo "Place your ticket ID in a ticketID.cfg at the repo root"
	exit 1
fi

TICKET_ID=$(cat /opt/src/ticketID.cfg)

if [ ! "$TICKET_ID" ]; then
	echo "No TICKET_ID defined in ticketID.cfg"
	exit 2
fi

echo Ticket ID: $TICKET_ID

SOURCE_URL=$(curl "http://onehouronelife.com/ticketServer/server.php?action=show_downloads&ticket_id=$TICKET_ID" | egrep -io 'http:[^"]+?source[^"]+?\.tar\.gz')

if [ ! "$SOURCE_URL" ]; then
	echo "No SOURCE_URL found.  Check that TICKET_ID is valid"
	exit 3
fi

echo Source: $SOURCE_URL

mkdir -p /opt/OneHourOneLife
cd /opt/OneHourOneLife

curl -o source.tar.gz $SOURCE_URL

tar xvzf source.tar.gz

./OneLife_Live4_UnixSource/pullAndBuildLatest

cd OneLife/server

./configure 1
make
ln -s ../../OneLifeData7/objects .
ln -s ../../OneLifeData7/transitions .
ln -s ../../OneLifeData7/categories .

sed -i 's/1/0/' settings/useStatsServer.ini
sed -i 's/1/0/' settings/requireTicketServerCheck.ini