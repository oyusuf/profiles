class profiles::dngitlab () {
  firewall {'120 allow puppet stuff':
    dport  => [22, 80, 443],
    proto  => tcp,
    action => accept,
  }

  class {'::gitlab':
    external_url => 'http://dnx16.datanix.comm',
  }
}
