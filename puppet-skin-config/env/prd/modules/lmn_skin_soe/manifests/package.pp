class lmn_skin_soe::package {

  package { [ 'wget', 'man', 'vim-enhanced', 'elinks' ]:
    ensure => installed,
  }

}
