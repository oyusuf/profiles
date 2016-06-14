class profiles::dndeploytar ($source = '', $target = '') {
  include wget

#  wget::fetch {"download_some_tar_file":
#    source      => $source,
#    destination => $target,
#    timeout     => 0,
#    verbose     => false,
#  }

  exec {"untarit":
    command => 'tar -xvf ',
    cwd     => 'atlassian-jira-6.4.1.tar.gz',
    path    => ["/bin", "/usr/sbin"],
#    require => Exec['download_some_tar_file']
  }
}
