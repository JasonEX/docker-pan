groupmod -o -g ${GID} www-data
usermod -o -u ${UID} www-data

chown -R www-data:www-data /downloads

/usr/bin/aria2c --conf-path="" --enable-rpc --rpc-listen-all

"${@-sh}"