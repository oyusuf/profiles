class profiles::dnusers {
    user { 'oyusuf':
    comment     => 'oyusuf',
    home        => '/home/oyusuf',
    shell       => '/bin/bash',
    uid         => 503,
    gid         => 503,
    managehome  => true,
    password    => '$1$TMdOH2gV$drAuBV2ZySYArVXL2/OQG1',
    groups      => oyusuf,
    require     => Group[oyusuf],
  }

  group { 'oyusuf':
    gid         =>503,
  }

  user { 'eyusuf':
    comment     => 'eyusuf',
    home        => '/home/eyusuf',
    shell       => '/bin/bash',
    uid         => 502,
    gid         => 502,
    managehome  => true,
    password    => '$1$TMdOH2gV$drAuBV2ZySYArVXL2/OQG1',
    groups      => eyusuf,
    require     => Group[eyusuf],
  }
 
    group { 'eyusuf':
    gid         =>502,
  }

}
