class profiles::dnsudoers {
   package { 'sudo':
   ensure => present,
 }
   file { '/etc/sudoers':
    owner   => 'root',
    group   => 'root',
   mode     =>  '0644',
   source   =>  'puppet:///modules/profiles/sudoers.conf',
    require =>  Package['sudo'],
 }
}
