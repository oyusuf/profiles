class profiles::dnjira () {
#  include jdk_oracle
#  include oracle_java
   include deploy 

 class {'oracle_java':
   version => '8u45',
   type    => 'jdk'
 }

 class {'::mysql::server':
    root_password    => 'password',
  } ->

  mysql::db {'jiradb':
    user     => 'jirauser',
    password => 'password',
    host     => 'dn53.datanetx.comm',
    grant    => ['ALL'],
  } ->

  class {'::jira':
    javahome => '/opt/java/latest',
    deploy_module => 'archive',
    db       => 'mysql',
    dbport   => '3306',
    dbdriver => 'com.mysql.jdbc.Driver',
    dbtype   => 'mysql',
  }

  include ::jira::facts 

  firewall {'120 allow puppet stuff':
    dport  => [8080],
    proto  => tcp,
    action => accept,
  }
}
