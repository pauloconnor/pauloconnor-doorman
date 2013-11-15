class doorman::service {
  service { 'doorman':
    ensure     => 'running',
    enable     => $doorman::enable,
    hasstatus  => true,
    hasrestart => true,
  }
}