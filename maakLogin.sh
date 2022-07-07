#! /bin/bash

rm passwordfile

echo "naam:"

read name
if [ -z "$name" ]; then
    name=$(whoami)
fi

echo "wachtwoord:"
read -s wachtwoord
ww_wcount=$(echo $wachtwoord| wc -c)

while [ $ww_wcount -lt 8 ]; do
    echo "wachtwoord moet minimaal 8 letters bevatten"
    echo "wachtwoord"
    read -s wachtwoord
    ww_wcount=$(echo $wachtwoord | wc -c)
done

echo "herhaal wachtwoord:"
read -s herhaal_wachtwoord

while [ "$herhaal_wachtwoord" != "$wachtwoord" ]; do
    echo "wachtwoord is niet hetzelfde."
    echo "herhaal wachtwoord"
    read -s herhaal_wachtwoord
done

echo "$name" >> $1
echo $wachtwoord | md5sum >> $1 