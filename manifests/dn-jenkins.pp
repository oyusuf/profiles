class profile::dn-jenkins {
  include jenkins::master

  firewall { '500 allow Jenkins inbound traffic':
    action => accept,
    dport  => 8081,
    proto  => tcp,
 }
  jenkins::user { 'oyusuf':
  email    => 'yomlinux@gmail.com',
  password => 'password', 
  ensure => 'present',
 }
   service { 'jenkins':
    ensure     => 'present',
#    enable     => ,
    hasstatus  => true,
    hasrestart => true,
  }
 
}
