class profiles::dn-hosts {
   file { "/etc/hosts":
    owner   => "root",
    group   => "root",
    mode    =>  0644,
    source  =>  "puppet:///modules/profiles/hosts",
  }
}
