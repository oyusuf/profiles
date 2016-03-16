class profiles::dn-jenkins {
#node 'dn19.datanetx.comm' {
#   include jenkins
   include jenkins
}
 
class jenkins::firewall {
 firewall { '500 allow Jenkins inbound traffic':
    action => accept,
    dport  => 8081,
    proto  => tcp,
}

class  jenkins::user { 'oyusuf':
  email    => 'yomlinux@gmail.com',
  password => 'password',
  ensure   => 'present',
 }

class jenkins::service { 'jenkins':
    ensure     => 'present',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
