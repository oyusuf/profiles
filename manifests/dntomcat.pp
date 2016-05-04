class profiles::dntomcat {

Exec {

  path => '/usr/bin:/usr/sbin/:/bin:/sbin:/usr/local/bin:/usr/local/sbin',
}

include tomcat

firewall { '101 allow access to tomcat':
    ensure => 'present',
    dport  =>   [8080],
    proto  =>   tcp,
    action =>  accept,
 }                     

tomcat::instance {'dn54.datanetx.comm':
  ensure    => present,
  http_port => '8080',
  http_address => '10.10.10.54',
 }  
}
