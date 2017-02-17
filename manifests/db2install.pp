class profiles::db2install {
 file {'db2install.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/db2install.sh',
   path   => '/usr/local/bin/db2install.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['db2install.sh'],
 }
 exec {'db2install.sh':
  command     => '/usr/local/bin/db2install.sh',
  refreshonly => true,
 }
}
