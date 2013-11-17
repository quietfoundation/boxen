class people::user::dotfiles {
  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/Dropbox/config"
  $library  = "${home}/Library"
  $appsupp  = "${library}/Application Support"

  file { $home:
    ensure  => directory
  }

  ## Configuration dotfile symlinks

  ## TODO adjust dotfile properties in dropbox to be chmod 600

  file { "${home}/.ssh":
    ensure => 'link',
    target => "${dotfiles}/env/ssh",
    force => true
  }

  file { "${home}/.oh-my-zsh":
    ensure => 'link',
    target => "${dotfiles}/env/oh-my-zsh",
    force => true
  }

  file { "${home}/.bashrc":
    ensure => 'link',
    target => "${dotfiles}/env/bashrc"
  }

  file { "${home}/.gitconfig":
    ensure => 'link',
    target => "${dotfiles}/env/gitconfig"
  }

  file { "${home}/.profile":
    ensure => 'link',
    target => "${dotfiles}/env/profile"
  }

  file { "${home}/.screenrc":
    ensure => 'link',
    target => "${dotfiles}/env/screenrc"
  }

  file { "${home}/.zshrc":
    ensure => 'link',
    target => "${dotfiles}/env/zshrc"
  }

  #file { "${appsupp}/Sublime Text 2":
  #  ensure => 'absent',
  #  force => true
  #}

  ## Application configuration symlinks

  # file { "${appsupp}/Sublime Text 2":
  #   ensure => 'link',
  #   target => "${dotfiles}/Sublime Text 2",
  #   force => true
  # }
}
