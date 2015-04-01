class lmn_skin_dnsmaster::config {

  file {'/var/named':
    ensure  => directory,
    owner   => 'root',
    group   => 'named',
    mode    => 0775,
    require => Package['bind'],
  }

  file {'/etc/named.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("${module_name}/named.conf.erb"),
    notify  => Service['named'],
  }


}
