class profiles::dnjenkins {
   include jenkins

  firewall { '100 allow access to jenkins':
    ensure => 'present',
    dport  =>   [8080],
    proto  =>   tcp,
    action =>  accept,
 }
}

### puppetlabs-firewall and rtyler-jenkins module require to get jenkins running####
