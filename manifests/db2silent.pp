class profiles::db2silent {
   file { '/tmp/db2server.rsp':
    owner   => 'root',
    group   => 'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/profiles/db2server.rsp',
  }
}
