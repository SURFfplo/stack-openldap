#!/bin/sh
MY_PASSWORD=`cat $SLAPD_PASSWORD`
ldapadd -D "cn=$SLAPD_USER,$SLAPD_DOMAIN" -w $MY_PASSWORD -p $SLAPD_PORT -h $SLAPD_HOST -f /provision/provision.ldif
