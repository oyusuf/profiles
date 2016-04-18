class profiles::dn-spacewalk {
   class { 'rhn_register':
    sslca         => '/var/www/html/pub/RHN-ORG-TRUSTED-SSL-CERT',
    serverurl     => 'http://10.10.10.55/XMLRPC',
#    username      => 'oyusuf',
#    password      => '#$P@ssw0rd',
    force         =>  'true',
    activationkey => '1-d7c1e6d780491a52a24772a03d7f5797',
 }
}


class profiles::dn-spacewalk {
class { 'rhn_register':
  sslca         => '/usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT',
  serverurl     => 'http://10.10.10.55/XMLRPC',
  activationkey => '1-1d6cfafaa90a972e7d3c2743e19f18cc',
 }
 class { 'rhn_register':
    activationkey => '1-d7c1e6d780491a52a24772a03d7f5797',
 }
}
