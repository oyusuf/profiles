class profiles::dn-spacewalk {
  class { 'rhn_register':
    sslca         => '/var/www/html/pub/RHN-ORG-TRUSTED-SSL-CERT',
    serverurl     => 'http://10.10.10.55',
    username      => 'oyusuf',
    password      => '#$P@ssw0rd',
    force         =>  true,
    activationkey => '1-d7c1e6d780491a52a24772a03d7f5797',
 }
}
