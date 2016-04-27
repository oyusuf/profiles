class profiles::dntomcat {
# include tomcat
class { 'tomcat':
  service_ensure => 'stopped',
  service_enable => false
}
tomcat::instance { 'datanix1':
  server_control_port => 8005,
  http_port           => 8080,
  ajp_connector       => false,
  …
}
tomcat::instance { 'datanix2':
  server_control_port => 8006,
  http_port           => 8081,
  manage_firewall     => true,
  …
}
}
