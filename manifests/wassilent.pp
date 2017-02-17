class profiles::wassilent {
   file { '/tmp/wassilent.xml':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/wassilent.xml',
  }
   file {'wasprofile.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/wasprofile.sh',
   path   => '/usr/local/bin/wasprofile.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['wasprofile.sh'],
 }
 exec {'wasprofile.sh':
  command     => '/usr/local/bin/wasprofile.sh',
  refreshonly => true,
 }
}
