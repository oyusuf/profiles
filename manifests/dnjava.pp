class profiles::dn-java {
   java::oracle {'jdk8':
      ensure  => 'present',
      version => '8',
      java_se => 'jdk',
  }
}
