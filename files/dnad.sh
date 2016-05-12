#!/bin/bash
yum  install -y krb5-workstation sssd* samba samba-common authconfig authconfig-gtki ntp
yum install -y samba-winbind samba-winbind-clients oddjob-mkhomedir pam_krb5 krb5-workstation 
yum install -y oddjob oddjob-mkhomedir sssd* samba samba-common 
yum install -y ldap* openldap* openldapclients openldapclient openldap-client openldap-clients   
