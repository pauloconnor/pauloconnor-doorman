# Class: doorman
#
# This module manages doorman
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

class doorman::install {
  package { 'npm' :
    ensure => 'latest',
  }

  vcsrepo { $doorman::install_dir:
    ensure    => latest,
    provider  => git,
    source    => 'https://github.com/pauloconnor/doorman.git',
    notify    => Exec['Install doorman'],
  }

  exec { 'Install doorman':
    cwd       => $doorman::install_dir,
    command   => '/usr/bin/npm install',
    require   => Package['npm'],
    unless    => '/usr/bin/test -d /usr/bin/doorman'
  }

  file { '/var/log/doorman/':
    ensure  => directory,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
  }

  file { "${doorman::install_dir}/log/production.log":
    ensure  => file,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
  }

  file { '/var/run/doorman':
    ensure => directory,
  }
}
