class lmn_skin_passenger::service {

  service { 'httpd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => File['/etc/httpd/conf.d/passenger.conf'],
  }

  service { 'puppetmaster':
    ensure => stopped,
  }

}
