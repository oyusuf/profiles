class profiles::dntomcat {
 
     tomcat::install { '/opt/tomcat':
       source_url => 'http://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.69/bin/apache-tomcat-7.0.69.tar.gz',
 } 
     tomcat::instance { 'default':
        catalina_home => '/opt/tomcat',
 }
  firewall { '100 allow access to tomcat':
    ensure => 'present',
    dport  =>   [8080],
    proto  =>   tcp,
    action =>  accept,
}
}

