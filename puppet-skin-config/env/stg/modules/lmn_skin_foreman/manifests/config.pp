class lmn_skin_foreman::config {

  file { '/etc/my.cnf' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/my.cnf.erb"),
  }

  file { '/etc/foreman/settings.yaml' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/settings.yaml.erb"),
  }

  file { '/etc/foreman/database.yml' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/database.yml.erb"),
  }

  file { '/usr/local/bin/mysql-backup.sh' :
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template("${module_name}/mysql-backup.sh.erb"),
  }

  cron { 'Foreman MySQL backup' :
    command => '/usr/local/bin/mysql-backup.sh',
    user    => 'root',
    hour    => '*',
    minute  => '10',
  }


}
