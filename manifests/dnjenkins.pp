class profiles::dn-jenkins {
   include jenkins

  firewall { '100 allow access to jenkins':
    ensure => 'present',
    dport  =>   [8080],
    proto  =>   tcp,
    action =>  accept,
 }
}
