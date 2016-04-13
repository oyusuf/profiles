class profiles::dn-apache {
  #  class { 'apache':}
     include apache }
apache::vhost { '10.10.10.18':
  port     => 80,
  docroot  => '/tmp/testvhost',
  template => 'apache/test.vhost.erb'
  }
