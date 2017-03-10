class profiles::dnusers {
    user { 'oyusuf':
    comment     => 'oyusuf',
    home        => '/home/oyusuf',
    shell       => '/bin/bash',
    uid         => 501,
    gid         => 501,
    managehome  => true,
    password    => '$6$bFMEd2GQ$ua4dkO2cSrHxkHnpzAvThz58RtC.Nt/FWIEsDrPr68PiF23CTo3GY19MELz8rM/2BUWrNLVwXcxaZ73fI9Unb.',
    groups      => oyusuf,
    require     => Group[oyusuf],
  }

  group { 'oyusuf':
    gid         =>501,
  }

  user { 'eyusuf':
    comment     => 'eyusuf',
    home        => '/home/eyusuf',
    shell       => '/bin/bash',
    uid         => 505,
    gid         => 505,
    managehome  => true,
    password    => '$6$bFMEd2GQ$ua4dkO2cSrHxkHnpzAvThz58RtC.Nt/FWIEsDrPr68PiF23CTo3GY19MELz8rM/2BUWrNLVwXcxaZ73fI9Unb.',
    groups      => eyusuf,
    require     => Group[eyusuf],
  }
 
    group { 'eyusuf':
    gid         =>505,
  }

  user { 'josephy':
    comment     => 'josephy',
    home        => '/home/josephy',
    shell       => '/bin/bash',
    uid         => 506,
    gid         => 506,
    managehome  => true,
    password    => '$6$bFMEd2GQ$ua4dkO2cSrHxkHnpzAvThz58RtC.Nt/FWIEsDrPr68PiF23CTo3GY19MELz8rM/2BUWrNLVwXcxaZ73fI9Unb.',
    groups      => josephy,
    require     => Group[josephy],
  }

    group { 'josephy':
    gid         =>506,
  }
}
