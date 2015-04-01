class lmn_skin_puppet::package {
 
  package { [ 'puppet', 'puppet-server', 'facter', 'bash-completion' ]:
    ensure => installed,
  }

}
