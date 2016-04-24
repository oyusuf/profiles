class profiles::dnxinetd {
      package { 'xinetd':
        ensure => installed,
     }
      service { 'xinetd':
        ensure    => 'running',
        enable    => true,
      }
    }
