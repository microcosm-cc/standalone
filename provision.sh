echo "Provisioning machine..."
echo "Adding postgresql key"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
    apt-key add -
echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list
apt-get update
apt-get -y install postgresql-9.2 memcached nginx 

su postgres
psql -f microcosm.sql
exit

echo
