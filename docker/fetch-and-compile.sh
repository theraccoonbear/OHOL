SERVER_NUMBER=$((1 + RANDOM % 8))
SOURCE_URL=http://download$SERVER_NUMBER.onehouronelife.com/downloads/OneLife_Live4_UnixSource.tar.gz

rm -fR /opt/src/OneLife

echo Source: $SOURCE_URL

mkdir -p /opt/game
cd /opt/game

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
