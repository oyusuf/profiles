class profiles::xinetd {
      package { 'xinetd':
        ensure => installed,
     }
      service { 'xinetd':
        ensure    => 'running',
        enable    => true,
      }
    }
