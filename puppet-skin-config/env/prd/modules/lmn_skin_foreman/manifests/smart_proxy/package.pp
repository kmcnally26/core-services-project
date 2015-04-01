class lmn_skin_foreman::smart_proxy::package {

  package { 'foreman-proxy':
    ensure => installed,
  }

}
