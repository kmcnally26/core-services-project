class lmn_skin_passenger::package {

  package { [ 'httpd', 'httpd-devel', 'mod_ssl', 'ruby-devel', 'rubygems', 'gcc',
              'openssl-devel', 'gcc-c++', 'zlib-devel', 'make' ]:
    ensure => installed,
  }

}
