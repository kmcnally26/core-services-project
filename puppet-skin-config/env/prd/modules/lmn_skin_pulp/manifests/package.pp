class lmn_skin_pulp::package {

  exec { 'pulp-server group install':
    path    => ['/bin', '/usr/bin'],
    command => 'yum -y groupinstall "pulp-server"',
    unless  => 'rpm -qa pulp-server',
  }

  exec { 'pulp-admin group install':
    path    => ['/bin', '/usr/bin'],
    command => 'yum -y groupinstall "pulp-admin"',
    unless  => 'rpm -qa pulp-admin-client',
  }

  package { ['httpd', 
	     'mongodb-server', 
             'pulp-server',
 	     'qpid-cpp-server' ]: 
    ensure => installed, 
  }  

}
