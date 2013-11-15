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
class doorman(
	$install_dir       = '/opt/doorman',
	$log_dir 					 = '/var/log/doorman/',
	$log_file					 = 'doorman.log',
	$logging				 	 = 'true',
	$listen_port       = 80,
	$proxy_host        = 'localhost',
	$proxy_port        = 8080,
	$session_secret    = 'jQnh2ugYZ2dGu3pq9n727uHvo',
	$github            = false,
	$github_app_id     = '',
	$github_app_secret = '',
	$github_org_name   = '',
	$google            = false,
	$google_app_id     = '',
	$google_app_secret = '',
	$google_domain     = ''
) {
  class{'doorman::install': } ->
  class{'doorman::config': } ~>
  class{'doorman::service': } ->
  Class['doorman']
}
