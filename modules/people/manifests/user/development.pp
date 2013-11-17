class people::user::development {
  include chrome::canary
  include ohmyzsh
  include postgresql
  include python
  include sublime_text_2
  include github_for_mac
  include heroku
  include mongodb
  include jewelrybox
  #include qt   # may not work in mavericks yet
  #include rvm  # follow instructions at http://github.com/blt04/puppet-rvm
  include foreman
}
