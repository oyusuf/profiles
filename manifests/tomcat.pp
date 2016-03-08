class profiles::tomcat {
    class { 'tomcat':
     header_fragment => 'my_custom_module/server.xml.header.erb',
  }
}
