class profiles::dnjira () {
  # include jdk_oracle
class { 'oracle_java':
  version => '8u45',
  type    => 'jdk'
}

  class { 'mysql::server': }
 
  mysql::db { 'jiradb':
    user     => 'jirauser',
    password => 'jiradb',
    host     => 'dn53.datanetx.comm',
    grant    => ['ALL'],  

#  postgresql::server::db { 'jira':
#    user     => 'jiraadm',
#    password => postgresql_password('jiraadm', 'mypassword'),
#  }

  class { 'jira':
    javahome => '/usr',
    db       => 'mysql',
    dbuser   => 'jirauser',
  }

  class { 'jira::facts':
  }

  firewall { '120 allow puppet stuff':
    dport  => [8080],
    proto  => tcp,
    action => accept,
  }
}
