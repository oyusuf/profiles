class profiles::dn-spacewalk {
  class { 'rhn_register':
    sslca         => 'http://10.10.10.55/pub/RHN-ORG-TRUSTED-SSL-CERT',
    serverurl     => 'http://10.10.10.55/XMLRPC',
    activationkey => '1-d7c1e6d780491a52a24772a03d7f5797',
 }
}
