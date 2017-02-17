class profiles::bpminstall {
 file {'bpminstall.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/bpminstall.sh',
   path   => '/usr/local/bin/bpminstall.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['bpminstall.sh'],
 }
 exec {'bpminstall.sh':
  command     => '/usr/local/bin/bpminstall.sh',
#  refreshonly => true,
 }
}
