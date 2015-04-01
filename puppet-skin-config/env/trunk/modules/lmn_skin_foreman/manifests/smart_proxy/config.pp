class lmn_skin_foreman::smart_proxy::config {

  if $fqdn == 'dns.example.com' {
    file { 'DNS Foreman Proxy Settings' :
      path    => '/etc/foreman-proxy/settings.yml',
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/dns_proxy_settings.yml.erb"),
      notify  => Service['foreman-proxy'],
    }

    file {'/etc/foreman-proxy/rndc.key':
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => 0644,
      content => template("${module_name}/rndc.key.erb"),
    }

    user { 'foreman-proxy':
      groups  => [ 'puppet', 'named' ]
    }

  }

  if $fqdn == 'puppet.example.com' {
    file { 'Puppet Foreman Proxy Settings' :
      path    => '/etc/foreman-proxy/settings.yml',
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/puppet_proxy_settings.yml.erb"),
      notify  => Service['foreman-proxy'],
    }

    user { 'foreman-proxy':
      groups  => [ 'puppet' ]
    }

  }

  if $fqdn == 'kickstart.example.com' {
    file { 'Kickstart Foreman Proxy Settings' :
      path    => '/etc/foreman-proxy/settings.yml',
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/kickstart_proxy_settings.yml.erb"),
      notify  => Service['foreman-proxy'],
    }

  }


}
