class profiles::dn-spacewalk {
  class { 'rhn_register':
    sslca         => '/var/www/html/pub/RHN-ORG-TRUSTED-SSL-CERT',
    serverurl     => 'https://10.10.10.51/XMLRPC',
    activationkey => '1-d7c1e6d780491a52a24772a03d7f5797',
 }

#  class { 'rhn_register':
#    activationkey => '1-d7c1e6d780491a52a24772a03d7f5797',
# }
}
