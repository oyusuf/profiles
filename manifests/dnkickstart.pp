class profiles::kickstart {
kickstart { '/var/www/html/kickstart.cfg':
  commands   =>{

},
partition_configuration =>
}
# file { '/var/www/html/kickstart.cfg':
#    owner   => 'root',
#    group   => 'root',
#    mode     =>  '0644',
#    source   =>  'puppet:///modules/profiles/kickstart.cfg',
#  } 

