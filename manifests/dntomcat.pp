class profiles::dntomcat {

Exec {

  path => '/usr/bin:/usr/sbin/:/bin:/sbin:/usr/local/bin:/usr/local/sbin',
}

include tomcat

tomcat::instance {'dn54.datanetx.comm':
  ensure    => present,
  http_port => '8080',
  http_address => '10.10.10.54',
 }  
}
