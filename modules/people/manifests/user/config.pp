class people::user::config {
  # osx::recovery_message { 'If found, please return by calling: <number>': }

  # # Common OSX default configurations
  # boxen::osx_defaults { 'Change software update check frequency to daily':
  #   key    => 'ScheduleFrequency',
  #   domain => 'com.apple.SoftwareUpdate',
  #   value  => '1',
  #   user   => $::boxen_user
  # }

  # # Time Machine
  # boxen::osx_defaults { 'Prevent Time Machine from prompting to use new hard drives as backup volume':
  #   key    => 'DoNotOfferNewDisksForBackup',
  #   domain => 'com.apple.TimeMachine',
  #   value  => 'true',
  #   user   => $::boxen_user
  # }

  # boxen::osx_defaults { 'Show Path bar in Finder':
  #   key    => 'ShowPathbar',
  #   domain => 'com.apple.Finder',
  #   value  => 'true',
  #   user   => $::boxen_user
  # }

  # boxen::osx_defaults { 'Autohide the Dock':
  #   key    => 'autohide',
  #   domain => 'com.apple.dock',
  #   value  => 'yes',
  #   user   => $::boxen_user
  # }
}
