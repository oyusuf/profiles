class profiles::dn-tomcat {
  class { 'tomcat':}   
  include java
}


