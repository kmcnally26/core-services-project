class lmn_skin_soe::service {

  service { [ 'sshd', 'crond' ]:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

  service { [ 'postfix', 'NetworkManager' ] :
    ensure => stopped,
  }

}
