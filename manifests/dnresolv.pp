class profiles::dnresolv {
   file { '/etc/resolv.conf':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0664',
    source  =>  'puppet:///modules/profiles/resolv.conf',
 }

}
