class profiles::elkelasticsearch {
 include elasticsearch
 elasticsearch::instance { $fqdn:
  config => {
     'http.cors.enabled'      => true,
     'http.cors.allow-origin' => "http://${ipaddress_eth0}",
  }
 }
}
