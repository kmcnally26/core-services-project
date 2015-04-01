class lmn_skin_soe::config {

  file {'/etc/resolv.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/resolv.conf.erb"),
  }

  file { '/etc/sysconfig/network-scripts/ifcfg-eth0':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/ifcfg-eth0.erb"),
  }

  file {'/etc/hosts':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/hosts.erb"),
  }

  file {'/etc/motd':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template("${module_name}/motd.erb"),
  }

}

