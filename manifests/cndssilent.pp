class profiles::cndssilent {
   file { '/tmp/cndssilent.xml':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/cndssilent.xml',
  }
}
