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
   
#   archive {'/tmp/atlassian-jira-6.3.7.tar.gz':
#  ensure        => present,
#  extract       => true,
#  extract_path  => '/tmp',
#  source        => 'https://downloads.atlassian.com/software/jira/downloads/',
#  checksum      => '',
#  checksum_type => 'none',
#  creates       => '/tmp/javax',
#  cleanup       => true,
#  user          => 'vagrant',
#  group         => 'vagrant',
#}   
}
