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

# file {'conf.sh':
#   ensure => 'file',
#   source => 'puppet:///modules/profiles/conf.sh',
#   path   => '/usr/local/bin/conf.sh',
#   owner  => 'root',
#   group  => 'root',
#   mode   => '0744',
#   notify => Exec['conf.sh'],
# }

# exec {'conf.sh':
#  command     => '/usr/local/bin/conf.sh',
#  refreshonly => true,
# }
}
