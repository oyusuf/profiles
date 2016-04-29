class profiles::dncheckmk {
   package { 'check-mk-agent':
   ensure => present,
 }
   file { '/etc/xinetd.d/check-mk-agent':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/check-mk-agent',
    require =>  Package['check-mk-agent'],
 }

}
