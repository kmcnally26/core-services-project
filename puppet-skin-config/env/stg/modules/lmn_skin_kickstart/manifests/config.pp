class lmn_skin_kickstart::config {


  file { '/etc/httpd/conf.d/kickstart.conf' :
    notify  => Service['httpd'],
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/kickstart.conf.erb"),
  }

  file { '/root/pxe_kickstart.sh' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0700',
    content => template("${module_name}/pxe_kickstart.sh.erb"),
  }

  user { 'foreman-proxy':
    groups  => 'puppet',
#    require => Package['foreman-proxy'],
  }


}
