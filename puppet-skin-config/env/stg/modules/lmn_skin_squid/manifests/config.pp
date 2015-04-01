class lmn_skin_squid::config {

  file { '/etc/squid/squid.conf' :
    ensure  => file,
    owner   => 'root',
    group   => 'squid',
    mode    => '0640',
    content => template("${module_name}/squid.conf.erb"),
    notify  => Service['squid'],
  }

}
