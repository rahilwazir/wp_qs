#!/bin/sh
# Prefix
PREFIX=wp_
DIR_PREFIX=

# Set a root url
DOMAIN=https://local.wp.com

# DB Configs
DB_USER=root
DB_PASS=root
DB_NAME=
DB_PREFIX=$PREFIX

# subdirectory to append to root url
SUBDIR=true

# Create unique id using php cli
# Ofcourse we are sure PHP will be available as it requires for WordPress.
ID=$(php -r "echo uniqid();")

BASENAME=$DIR_PREFIX$ID

# Absolute directory path
DIR=$(pwd)/$BASENAME

DB_NAME=$PREFIX$ID

# If SUBDIR is truthy, append to root url
if $SUBDIR; then
    URL="$DOMAIN/$BASENAME"
fi

# Make a directory
# You can prefix it like `wp_$DIR`, example output e.g: `wp_57e2702adf4d4`
# As I'm not prefixing because my sites will be all under virtual host root domain
# like, http://local.wp.com/57e2702adf4d4
mkdir $DIR && cd $DIR

# Then download latest version of WP (en_US) in the current dir
wp core download

# Let's create database using mysql
# Reference: http://stackoverflow.com/a/2428440/2706988
mysql -u $DB_USER -p$DB_PASS -e "create database $DB_NAME"

# Set wp-config.php
wp core config --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbprefix=$DB_PREFIX

# Run install command
wp core install --url=$URL --title=$BASENAME --admin_user=admin --admin_password=admin --admin_email=info@example.com --skip-email=true