#!/bin/sh


#
# Output from openssl be like:
# subject= /C=UK/O=eScience/OU=CLRC/L=RAL/CN=ceph-dev-gw3.gridpp.rl.ac.uk
#
# Mapfile entry we want be like:
# "/C=UK/O=eScience/OU=CLRC/L=RAL/CN=ceph-dev-gw3.gridpp.rl.ac.uk" testuser
#

cert=$1
user=$2

openssl x509 -subject -in ${cert} -noout | cut -d ' ' -f 2 | sed -e "s/.*/\"&\" ${user}/" >> /etc/grid-security/grid-mapfile

useradd -Mls /sbin/nologin ${user}
