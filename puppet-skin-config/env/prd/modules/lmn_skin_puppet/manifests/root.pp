class lmn_skin_puppet::root {

# The puppet master is the git master as well so all clients need roots priv key

  file { '/root/.ssh' :
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0750',
  }

  file { '/root/.ssh/id_rsa' :
    owner   => 'root',
    group   => 'root',
    mode    => '0400',
    content => template("${module_name}/roots.id_rsa.erb"),
  }

  file { '/root/.ssh/id_rsa.pub' :
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/roots.id_rsa.pub.erb"),
  }

}
