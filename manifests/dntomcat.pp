class profiles::dntomcat {
# include tomcat
class { 'tomcat':
  service_ensure => 'stopped',
  service_enable => false
}
tomcat::instance { 'datanix1':
  server_control_port => 8005,
  root_path           => '/home/tomcat/datanix1',
  http_port           => 8080,
  ajp_connector       => false,
}
tomcat::instance { 'datanix2':
  server_control_port => 8006,
  root_path           => '/home/tomcat/datanix2',
  http_port           => 8081,
  manage_firewall     => true,
}
}
