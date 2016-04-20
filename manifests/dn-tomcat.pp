class profiles::dn-tomcat {
  class { 'tomcat':}   
  include java

 firewall { '100 allow access to tomcat':
    ensure => 'present',
    dport  =>   [8080],
    proto  =>   tcp,
    action =>  accept,
}
