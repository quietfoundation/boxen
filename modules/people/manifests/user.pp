class people::user {
  include people::user::applications
  include people::user::development
  include people::user::config
  include people::user::dotfiles
}
