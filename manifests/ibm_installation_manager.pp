class profiles::ibm_installation_manager {
  class { 'ibm_installation_manager':
  deploy_source => true,
 source => 'http://dnx13.datanix.comm/IBM_INSTALL_MGR_V1.7.1_L64BIT_ML.zip',
 #source => 'http://dnx13.datanix.comm/agent.installer.linux.gtk.x86_1.8.5000.20160506_1125.zip',
  source_dir => '/opt/IBM/tmp/InstallationManager',
  target => '/opt/IBM/',
  }
  file {'im.sh':
   ensure => 'file',
   source => 'puppet:///modules/profiles/im.sh',
   path   => '/usr/local/bin/im.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['im.sh'],
  }
   exec {'im.sh':
   command     => '/usr/local/bin/im.sh',
   refreshonly => true,
  }
}
