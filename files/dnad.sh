#!/bin/bash
yum  install -y krb5-workstation sssd* samba samba-common authconfig authconfig-gtki ntp
yum install -y samba-winbind samba-winbind-clients oddjob-mkhomedir pam_krb5 oddjob oddjob-mkhomedir sssd* samba samba-common 
yum install -y ldap* openldap* openldapclients openldapclient openldap-client openldap-clients  
authconfig --update --kickstart --enablewinbind --smbsecurity=ads --smbworkgroup=DATANETX --smbrealm=DATANETX.COMM
--winbindtemplatehomedir=/home/%U --winbindtemplateshell=/bin/bash --enablewinbindusedefaultdomain --enablelocauthorize --enablekrb5 --krb5realm=DATANETX.COMM --enablekrb5kdcdns --enablekrb5realmdns --enablepamaccess
net ads join -U Administrator 
