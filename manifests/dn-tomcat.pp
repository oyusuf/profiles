class profiles::dn-tomcat {
  class { 'tomcat':
    install_from_source => false,
}
#   class {'epel':}->
#   tomcat::instance {'default':
#     package_name => 'tomcat',
#}->
   tomcat::service {'default':
     use_jsvc     => false,
     use_init     => true,
     service_name => 'tomcat',
}


 firewall { '100 allow access to tomcat':
    ensure => 'present',
    dport  =>   [8080],
    proto  =>   tcp,
    action =>  accept,
 }
   include java
}
