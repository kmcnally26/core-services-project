class lmn_skin_soe::puppet {

  if $fqdn != 'puppet.example.com' {
    file {'/etc/puppet/puppet.conf':
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/puppet.conf.erb"),
    }
  }

}
