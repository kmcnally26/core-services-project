class lmn_skin_foreman::smart_proxy::service {

  service {'foreman-proxy':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}
