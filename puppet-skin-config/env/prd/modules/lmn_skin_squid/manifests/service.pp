class lmn_skin_squid::service {

  service { 'squid':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}
