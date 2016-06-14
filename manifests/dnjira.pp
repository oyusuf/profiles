class profiles::dnjira {

class {'jira':
  javahome    => '/opt/java',
  version     => '6.3.7',
}

class {'jira::facts': }

 class {'::mysql::server':
    root_password    => 'password',
  } ->

  mysql::db {'jiradb':
    user     => 'jirauser',
    password => 'password',
    host     => 'dn53.datanetx.comm',
    grant    => ['ALL'],
  } ->

 class {'jira':
    javahome => '/opt/java',
    deploy_module => 'archive',
    db       => 'mysql',
    dbport   => '3306',
    dbdriver => 'com.mysql.jdbc.Driver',
    dbtype   => 'mysql',
  }

  firewall {'120 allow puppet stuff':
    dport  => [8080],
    proto  => tcp,
    action => accept,
  }
}
