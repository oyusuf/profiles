class profiles::dntomcat {

Exec {
  path => '/usr/bin:/usr/sbin/:/bin:/sbin:/usr/local/bin:/usr/local/sbin',
}

include tomcat

   tomcat::instance {'dn54.datanetx.comm':
      ensure       => present,
      group        => "adm", 
      server_port => 8006,
      http_address => '10.10.10.54',
      http_port   => 8081,
      ajp_port    => 8010,
      sample      => true,   
 }
}
