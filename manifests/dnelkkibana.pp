class profiles::elkkibana {

class { '::kibana4':
  package_ensure    => '4.3.0-linux-x64',
  package_provider  => 'archive',
  symlink           => true,
  manage_user       => true,
  kibana4_user      => kibana4,
  kibana4_group     => kibana4,
  kibana4_gid       => 507,
  kibana4_uid       => 507,
  config            => {
      'server.port'           => 5601,
      'server.host'           => '10.10.10.20',
      'elasticsearch.url'     => 'http://10.10.10.20:9200',
      }
  }
}
