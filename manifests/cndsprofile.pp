class profiles::cndsprofile {
 file {'cndsprofile.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/cndsprofile.sh',
   path   => '/usr/local/bin/cndsprofile.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['cndsprofile.sh'],
 }
 exec {'cndsprofile.sh':
  command     => '/usr/local/bin/cndsprofile.sh',
  refreshonly => true,
 }
}
