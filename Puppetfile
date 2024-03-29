# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "foreman",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.5.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.3.0"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.7.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"
github "sysctl",     "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "ohmyzsh",    "0.0.1", :repo => "haelmy/puppet-ohmyzsh"
github "arq",        "1.0.0"
github "chrome",     "1.1.2"
github "codekit",    "1.0.4"
github "crashplan",  "1.0.1"
github "dropbox",    "1.1.2"
github "firefox",    "1.1.4"
github "flux",       "1.0.0"
github "github_for_mac", "1.0.1"
github "heroku",     "2.1.1"
github "mongodb",    "1.0.5"
github "osx",        "2.0.0"
github "postgresql", "2.1.0"
github "python",     "1.3.0"
github "skype",      "1.0.6"
github "spotify",    "1.0.1"
github "sublime_text_2", "1.1.2"
github "teamviewer", "1.0.1"
github "transmission", "1.0.0"
github "xscope",     "1.0.0"
github "vlc",        "1.0.5"
github "alfred",     "1.1.6"
github "jewelrybox", "1.0.1", :repo => "Citrrus/puppet-jewelrybox"
github "adium",      "1.2.0"
github "handbrake",  "1.0.1"
github "qt",         "1.1.0"