class lmn_skin_foreman::package {

  package { [ 'foreman', 
       	      'foreman-mysql2',
	      'httpd',
	      'mod_ssl', 
	      'mod_passenger', 
	      'ruby193-rubygem-passenger', 
	      'ruby193-rubygem-passenger-native', 
	      'ruby193-rubygem-passenger-native-libs', 
	      'rubygem-passenger-native-libs', 
	      'rubygem-passenger-native', 
	      'rubygem-passenger', 
	      'mysql-server' ]:
    ensure => installed,
  }

}
