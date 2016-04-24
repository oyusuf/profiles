class profiles::dnresolv {
   file { '/etc/resolv.conf':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/resolv.conf',
 }

}
