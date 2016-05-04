class profiles::dntomcat {

Exec {
  path => '/usr/bin:/usr/sbin/:/bin:/sbin:/usr/local/bin:/usr/local/sbin',
}

include tomcat

tomcat::instance {'myapp':
  ensure    => present,
  http_port => '8080',
}   
 }
