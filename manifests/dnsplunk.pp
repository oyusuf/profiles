class profiles::dnsplunk () {
 class {"splunk":
  puppi  => true,
  } 

  firewall {'120 allow Splunk Stuff':
    dport  => [8080],
    proto  => tcp,
    action => accept,
  }
  
}
