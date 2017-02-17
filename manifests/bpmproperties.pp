class profiles::bpmproperties {
 file {'bpmproperties.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/bpmproperties.sh',
   path   => '/usr/local/bin/bpmproperties.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['bpmproperties.sh'],
 }
 exec {'bpmproperties.sh':
  command     => '/usr/local/bin/bpmproperties.sh',
#  refreshonly => true,
 }
}
