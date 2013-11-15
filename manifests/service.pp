class doorman::service {
  $ensure = $doorman::start ? {true => running, default => running}
  service { 'doorman':
    ensure     => $ensure,
    enable     => $doorman::enable,
    hasstatus  => true,
    hasrestart => true,
  }
}