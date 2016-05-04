class profiles::dntomcat {

include tomcat

tomcat::connector{'http-8080':
  ensure   => present,
  instance => 'tomcat1',
  protocol => 'HTTP/1.1',
  port     => 8080,
  manage   => true,
}

tomcat::connector{'ajp-8081':
  ensure   => present
  instance => 'tomcat1'
  protocol => 'AJP/1.3',
  port     => 8081,
  manage   => true,
}

tomcat::instance {'tomcat1':
  ensure    => present,
  group     => 'tomcat-admin',
  manage    => true,
  connector => ['http-8080','ajp-8081'],
}
