class profiles::dnad {
 file {'dnad.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/dnad.sh',
   path   => '/usr/local/bin/dnad.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['dnad.sh'],
 }
 exec {'dnad.sh':
  command     => '/usr/local/bin/dnad.sh',
  refreshonly => true,
 }
}
