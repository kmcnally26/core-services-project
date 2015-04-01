class lmn_skin_passenger::config {

  file { '/etc/httpd/conf.d/passenger.conf' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/passenger.conf.erb"),
  }

}
