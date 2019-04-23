#!/bin/bash

# Run this script once to build secrets & configs

echo "Choose new admin password:"
read admpwd
printf $admpwd | docker secret create openldap_admin_password -
echo done...

