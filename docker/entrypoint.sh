#!/bin/bash


# until nc -z one-life-mysql 3306; do
#     echo "$(date) - waiting for one-life-mysql..."
#     sleep 1
# done

# SQL="mysql -h one-life-mysql -u root";

# echo "Creating one-life database";
# MYSQL_PWD=qwe123 $SQL -e "CREATE DATABASE IF NOT EXISTS one-life DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;";

echo -n 'Game time'
until false; do
	echo -n '.'
	sleep 1
done

exec "$@"
