class profiles::dnconfluence {

class { 'mysql::server':
  root_password => 'password'
}

  mysql::db { 'confluencedb':
   user     => 'confluenceuser',
   dbname   => 'confluencedb',
   password => 'password',
   host     => 'dn53.datanetx.comm',
   grant    => ['ALL'],
}   
 
 class { 'oracle_java':
    version => '8u77',
    type    => 'jdk'
  } ->
  file { ['/var/atlassian', '/var/atlassian/application-data', '/opt/atlassian',]: ensure => 'directory', } ->
 
 class { 'confluence':
    version    => '5.5.6',
    deploy_module => 'archive',
    installdir => '/opt/atlassian/confluence',
    homedir    => '/var/atlassian/application-data/confluence',
    javahome   => '/usr/java/default',
  }
}
