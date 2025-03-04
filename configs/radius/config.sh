cat <<EOT >> /etc/freeradius/3.0/clients.conf
client bngs{
    ipaddr = 10.100.0.0/24
    secret = testing123
}
EOT

sed -i '1i\testing2 Cleartext-Password := \"password\"' /etc/freeradius/3.0/mods-config/files/authorize
sed -i '1i\user1 Cleartext-Password := \"test123\"' /etc/freeradius/3.0/mods-config/files/authorize
sed -i '1i\user2 Cleartext-Password := \"test123\"' /etc/freeradius/3.0/mods-config/files/authorize
sed -i '1i\user3 Cleartext-Password := \"test123\"' /etc/freeradius/3.0/mods-config/files/authorize
sed -i '1i\02:42:ac:00:00:01 Cleartext-Password := \"alcatel\"' /etc/freeradius/3.0/mods-config/files/authorize
sed -i '1i\02:42:ac:00:00:02 Cleartext-Password := \"alcatel\"' /etc/freeradius/3.0/mods-config/files/authorize
sed -i '1i\02:42:ac:00:00:03 Cleartext-Password := \"alcatel\"' /etc/freeradius/3.0/mods-config/files/authorize

cp /config/dictionary-freeradius.txt /usr/share/freeradius/
ln -s /etc/freeradius/3.0/sites-available/coa /etc/freeradius/3.0/sites-enabled/
