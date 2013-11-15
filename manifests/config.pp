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
class doorman::config {
  $install_dir       = $doorman::install_dir
  $log_dir           = $doorman::log_dir
  $logging           = $doorman::logging
  $listen_port       = $doorman::listen_port
  $proxy_host        = $doorman::proxy_host
  $proxy_port        = $doorman::proxy_port
  $session_secret    = $doorman::session_secret
  $github            = $doorman::github
  $github_app_id     = $doorman::github_app_id
  $github_app_secret = $doorman::github_app_secret
  $github_org_name   = $doorman::github_org_name
  $google            = $doorman::google
  $google_app_id     = $doorman::google_app_id
  $google_app_secret = $doorman::google_app_secret
  $google_domain     = $doorman::google_domain

  file { "${install_dir}/conf.js" :
    ensure   => present,
    mode     => '0644',
    owner    => 'root',
    group    => 'root',
    content  => template('doorman/conf.js.erb'),
  }

  file { '/etc/init.d/doorman':
    ensure   => 'file',
    mode     => '0755',
    owner    => 'root',
    group    => 'root',
    content  => template('doorman/etc/init.d/doorman'),
    require  => File["${install_dir}/conf.js"],
  }
}
