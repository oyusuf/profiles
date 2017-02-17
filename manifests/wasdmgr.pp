class profiles::wasdmgr {
   file { '/tmp/wassilent.xml':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/wassilent.xml',
  }
   file {'wasdmgr.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/wasdmgr.sh',
   path   => '/usr/local/bin/wasdmgr.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['wasdmgr.sh'],
 }
 exec {'wasdmgr.sh':
  command     => '/usr/local/bin/wasdmgr.sh',
  refreshonly => true,
 }
}
