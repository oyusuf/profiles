class profiles::checkmk {
   package { "check-mk-agent":
   ensure => present,
 }
   file { "/etc/xinetd.d/check_mk":
    owner   => "root",
    group   => "root",
    mode    =>  0644,
    source  =>  "puppet:///modules/profiles/check_mk",
    require =>  Package ["check-mk-agent"],
 }

}

