class profiles::dnjira {
 class {'jira':
    javahome => '/opt/java',
    version  => '6.3.7',
    deploy_module => 'archive',
    db       => 'mysql',
    dbport   => '3306',
    dbdriver => 'com.mysql.jdbc.Driver',
    dbtype   => 'mysql',
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

  firewall {'120 allow puppet stuff':
    dport  => [8080],
    proto  => tcp,
    action => accept,
  }
  
  include '::archive'
  
  Archive {
    provider => 'ruby',
}

#archive { '/tmp/jta-1.1.jar':
#  ensure        => present,
#  extract       => true,
#  extract_path  => '/tmp',
#  source        => 'http://central.maven.org/maven2/javax/transaction/jta/1.1/jta-1.1.jar',
#  checksum      => '2ca09f0b36ca7d71b762e14ea2ff09d5eac57558',
#  checksum_type => 'none',
#  creates       => '/tmp/javax',
#  cleanup       => true,
#  user          => 'vagrant',
#  group         => 'vagrant',
#}   
}
