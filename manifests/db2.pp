class profiles::db2 {
  include db2

db2::install { 'V10.5.0.3':
#  source     => 'puppet:///pe_packages/v11.1_linuxx64_server_t.tar.gz',
#  source     => 'http://ustlvcmsp2199.rdcms.eds.com/DB2_Svr_10.5.0.3_Linux_x86-64.tar.gz',
   source     => 'http://ustlvcmsp2199.rdcms.eds.com/DB2_Svr_10.5.0.3_Linux_x86-64.tar.gz',
  components => [
  'ACS',
  'APPLICATION_DEVELOPMENT_TOOLS',
  'DB2_SAMPLE_DATABASE   ',
  'BASE_CLIENT',
  'JDK',
  'BASE_DB2_ENGINE',
  'JAVA_SUPPORT',
  'REPL_CLIENT',
  'SQL_PROCEDURES',
  'LDAP_EXPLOITATION',
  'COMMUNICATION_SUPPORT_TCPIP'
  ],
  license_content => template('db2/license/trial.lic'),
  }

db2::instance { 'db2inst1':
  fence_user        => 'db2fenc1',
  installation_root => '/opt/ibm/db2/V10.5.0.3',
#  installer_folder  => 'server_t',
  require           => Db2::Install['V10.5.0.3'],
  }
}

