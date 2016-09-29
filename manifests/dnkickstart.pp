class profiles::kickstart {
 include kickstart
   
file { '/var/www/html/kickstart.cfg':
    owner   => 'root',
    group   => 'root',
    mode     =>  '0644',
    source   =>  'puppet:///modules/profiles/kickstart.cfg',
  } 
}
