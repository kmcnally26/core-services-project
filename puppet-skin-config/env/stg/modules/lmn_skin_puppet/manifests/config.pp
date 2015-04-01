class lmn_skin_puppet::config {

  file {'/etc/puppet/puppet.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/puppet.conf.erb"),
  }

  file { '/usr/lib/ruby/site_ruby/1.8/puppet/reports/foreman.rb' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/foreman.rb.erb"),
  }

  file { '/usr/local/bin/lmn-cd' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template("${module_name}/lmn-cd.erb"),
  }

  file { '/etc/bash_completion.d/lmn-cd' :
    ensure  => link,
    target => '/usr/local/bin/lmn-cd',
  }

  file { '/usr/local/bin/lmn-tag' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template("${module_name}/lmn-tag.erb"),
    require => Package['bash-completion'],
  }

  ssh_authorized_key { 'git@puppet' :
    ensure => present,
    user   => 'git',
    type   => 'rsa',
    key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA0XwsVa1KRzGgRv1/uPRZZOOGiq9Wz0gyB5+KFg/gFEtjSdAzUoty+u6YWTtN/P1zmtUapzQFZJWjv0gHGGV6969be5JF31CMj7GLwldeIDXKUYc4fk3U6HDNnJWN27EnnBEKl8ufWrA2oQf3WiK9qpGB8mLXvdB2KWL0bn69WxvHMXt2yfIiUgixeCXLWUJ1Ue/SCmbMSshiS60N58afHxxmbxu6LlCEr8h3GkMyezM6CX8ahElxLtcad5Wdax6bGrfc4YihsRhP8yT+Jx79fAn+QTX39QxTetg9KMrQjXcPpUEMlH9vqszvq+9CQpk1MEi8mym7rxV92/jI0kx1Bw==',
  }

}
