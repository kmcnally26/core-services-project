class lmn_skin_dnsmaster::service {

   service {'named':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['bind'],
  }

}
