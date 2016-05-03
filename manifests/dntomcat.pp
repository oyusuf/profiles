class profiles::dntomcat {
  include tomcat

#    tomcat::connector{'http-8080':
#      ensure   => present,
#      instance => 'dn54.datanetx.comm',
#      protocol => 'HTTP/1.1',
#      port     => 8080,
#      manage   => true,
#    }

#    tomcat::connector{'ajp-8081':
#      ensure   => present
#      instance => 'dn54.datanetx.comm',
#      protocol => 'AJP/1.3',
#      port     => 8081,
#      manage   => true,
#    }

#    tomcat::instance {'dn54.datanetx.comm':
#      ensure    => present,
#      group     => 'tomcat-admin',
#      manage    => true,
#      connector => ['http-8080','ajp-8081'],
#    }

Exec {
  path => '/usr/bin:/usr/sbin/:/bin:/sbin:/usr/local/bin:/usr/local/sbin',
 } 

 tomcat::instance::service{ 'tomcat':
  ensure => 'running',
  enable => "true",
 } 
 
 tomcat::instance {'dn54.datanetx.comm':
  ensure    => present,
  http_port => '8080',
 } 
}
