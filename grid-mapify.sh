#!/bin/sh

cert=$1
user=$2

openssl x509 -subject -in ${cert} -noout | cut -d ' ' -f 2 | sed -e "s/.*/\"&\" ${user}/" >> /etc/grid-security/grid-mapfile

useradd -Mls /sbin/nologin ${user}
