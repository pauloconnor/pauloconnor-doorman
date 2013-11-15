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
class doorman::service {
  service { 'doorman':
    ensure     => 'running',
    enable     => $doorman::enable,
    hasstatus  => true,
    hasrestart => true,
  }
}