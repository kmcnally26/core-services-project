class lmn_skin_gitclient::config {

    file { '/root/.ssh' :
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0700',
    } ->

    file { '/root/.ssh/known_hosts' :
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/known_hosts.erb"),
    } ->

    file { '/root/.ssh/config' :
      owner   => 'root',
      group   => 'root',
      mode    => '0600',
      content => template("${module_name}/ssh_config.erb"),
    } ->

    file { '/usr/local/bin/papply' :
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => '0755',
      content => template("${module_name}/papply.erb"), 
      require => Package['git'],
    } ->

    cron { 'Git pull and Puppet apply' :
      command => '/usr/local/bin/papply',
      user    => 'root',
      hour    => '*',
      minute  => '*/10',
    } ->

## Needed for each client to report to foreman
    file { '/usr/lib/ruby/site_ruby/1.8/puppet/reports/foreman.rb' :
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/foreman.rb.erb"),
    }

# This fails as ssh is connecting for 1st time and git does not except ssh options
    exec { 'Clone puppet env git client repo':
      command => '/usr/bin/git clone puppet:/var/git/env.git /etc/puppet/env',
      creates => '/etc/puppet/env/.git',
      require => File['/root/.ssh/known_hosts'],
    }

}
