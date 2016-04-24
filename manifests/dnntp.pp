class profiles::dnntp {
      package { 'ntp':
        ensure => installed,
      }
      file { 'ntp.conf':
        path    => '/etc/ntp.conf',
        ensure  => file,
        require => Package['ntp'],
        source  => 'puppet:///modules/profiles/ntp.conf'
      }
      service { 'ntpd':
        ensure    => 'running',
        enable    => true,
        subscribe => File['ntp.conf'],
      }
    }

