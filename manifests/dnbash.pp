class profiles::dnbash {
 file {'bash.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/bash.sh',
   path   => '/usr/local/bin/bash.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['bash.sh'],
 }
 exec {'bash.sh':
  command     => '/usr/local/bin/bash.sh',
  refreshonly => true,
 }
}
