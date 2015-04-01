class lmn_skin_pulp::config {

  file { '/etc/pulp/admin/admin.conf' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/admin.conf.erb"),
    require => Package['pulp-server'],
  }


}
