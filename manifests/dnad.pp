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
     file { '/etc/samba/smb.conf':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/smb.conf',
  }
    file { '/etc/krb5.conf':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/krb5.conf',
  }
    file { '/etc/sssd/sssd.conf':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/sssd.conf',
  }                                                                                                        
}
