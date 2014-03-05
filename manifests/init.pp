# Class: docker
#
# This module manages docker
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class docker {

  package { 'docker-io':
    ensure => installed
  }

  service { 'docker':
    ensure      => running,
    enable      => true,
    hasrestart  => true,
    require     => Package['docker-io']
  }

}
