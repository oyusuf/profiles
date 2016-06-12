####### Module Needed #jlondon-phpmyadmin and #puppetlabs-mysql############### 
class profiles::dnmysql {

class { 'mysql::server':
  root_password => 'password'
}

  mysql::db { 'confluencedb':
   user     => 'confluenceuser',
   dbname   => 'confluencedb',
   password => 'password',
   host     => 'dn53.datanetx.comm',
   grant    => ['ALL'],
}
  mysql::db { 'jiradb':
  user     => 'jirauser',
  password => 'jiradb',
  host     => 'dn53.datanetx.comm',
  grant    => ['ALL'],
}

 class {'phpmyadmin':
    enabled          => true,
    ip_access_ranges => [ '10.10.10.0/24' ],
#   ip_access_ranges => [ '10.10.10.0/24', '10.10.10.53' ],
  }

  phpmyadmin::server { 'default': }

 firewall { '100 allow MySQL on 3306 & 3307':
    dport  => [3306, 3307, 80, 443],
    proto  => tcp,
    action => accept,
  }
}
