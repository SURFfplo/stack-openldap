Database provisoning
---
ldapadd -D "cn=admin,dc=surfuni,dc=org" -w PASSWORD -p 389 -h localhost -f provision.ldif


TESTING
=======

doet ie wat?
---
ldapsearch -D "cn=admin,dc=surfuni,dc=org" -w PASSWORD -p 389 -h localhost -b "dc=surfuni,dc=org" -s sub "*"


CONTENT TEST
============

user en group toevoegen
---
ldapadd -D "cn=admin,dc=surfuni,dc=org" -w PASSWORD -p 389 -h localhost -f adduser.txt 
ldapadd -D "cn=admin,dc=surfuni,dc=org" -w PASSWORD -p 389 -h localhost -f addgroup.txt 

zoeken naar user en group
---

ldapsearch -D "cn=admin,dc=surfuni,dc=org" -w PASSWORD -p 389 -h localhost -b "ou=Users,ou=FPLO,dc=surfuni,dc=org" -s sub "cn=*"
ldapsearch -D "cn=admin,dc=surfuni,dc=org" -w PASSWORD -p 389 -h localhost -b "ou=Groups,ou=FPLO,dc=surfuni,dc=org" -s sub "cn=*"

verwijderen van user en groep
---

ldapdelete -D "cn=admin,dc=surfuni,dc=org" -w PASSWORD -p 389 -h localhost -f delgroupuser.txt
