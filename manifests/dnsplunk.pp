class profiles::dnsplunk {
 include ::splunk

  firewall {'120 allow Splunk Stuff':
    dport  => [8080],
    proto  => tcp,
    action => accept,
  }
  
}
