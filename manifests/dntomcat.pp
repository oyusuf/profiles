class profiles::dntomcat {
  class { 'tomcat': }
class { 'java': }

tomcat::instance { 'prod':
  source_url => 'http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.0/bin/apache-tomcat-8.5.0-deployer.tar.gz'
}->
tomcat::service { 'default': }


  firewall { '100 allow access to tomcat':
    ensure => 'present',
    dport  =>   [8080],
    proto  =>   tcp,
    action =>  accept,
 }
}
