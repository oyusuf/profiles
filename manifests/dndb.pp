class profiles::dndb {

 firewall { '100 allow MySQL on 3306 & 3307':
    dport  => [3306, 3307, 80, 443],
    proto  => tcp,
    action => accept,
  }
}
