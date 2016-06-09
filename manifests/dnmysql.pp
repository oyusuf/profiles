class profiles::dnmysql {

class { 'mysql::server':
  root_password => 'password'
}

  mysql::db { 'dn53':
   user     => 'root',
   dbname   => 'dn53',
   password => 'password',
   host     => 'dn53.datanetx.comm',
   grant    => ['SELECT', 'CREATE', 'DELETE', 'UPDATE'],
}

#mysql::db { "mydb_${fqdn}":
#  user     => ',
#  password => 'mypass',
#  dbname   => 'mydb',
#  host     => $::fqdn,
#  grant    => ['SELECT', 'CREATE', 'DELETE', 'UPDATE'],
#  tag      => $domain,
 

 class {'phpmyadmin':
  }

  phpmyadmin::server { 'default': }

 firewall { '100 allow MySQL on 3306 & 3307':
    dport  => [3306, 3307, 80, 443],
    proto  => tcp,
    action => accept,
  }
}
