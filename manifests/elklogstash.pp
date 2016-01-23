class profiles::elklogstash {
  include logstash}
  class { '::logstash':
    manage_repo     => true,
    repo_version    => '1.4',
    purge_configdir => true,
 }
  logstash::configfile { 'messages-input':
    order  => 100,
    source => 'puppet:///modules/profiles/messages-input.conf',
 }
  logstash::configfile { 'syslog-filter':
    order  => 200,
    source => 'puppet:///modules/profiles/syslog-filter.conf',
 }
  logstash::configfile { 'elasticsearch-output':
    order  => 900,
    source => 'puppet:///modules/profiles/elasticsearch-output.conf',
 }

