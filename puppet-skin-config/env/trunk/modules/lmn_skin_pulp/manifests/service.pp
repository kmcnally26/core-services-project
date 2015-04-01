class lmn_skin_pulp::service {

  service { 'httpd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['httpd'],
  }

  service { 'mongod':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['mongodb-server'],
  }


  service { 'qpidd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['qpid-cpp-server'],
  }

  exec { 'Initialize Pulp DB':
    command => '/usr/bin/pulp-manage-db',
    creates => '/var/lib/mongodb/pulp_database.0',
    require => Service['qpidd'],
  }

}
