class profiles::dn-tomcat {
  class { 'tomcat':}

 firewall { '100 allow access to tomcat':
    ensure => 'present',
    dport  =>   [8080],
    proto  =>   tcp,
    action =>  accept,
 }
   include java
}
