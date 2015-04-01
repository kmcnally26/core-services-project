class lmn_skin_kickstart::package {

  Package { ensure => installed }
    package { 'tftp-server': }
    package { 'dhcp': }
    package { 'xinetd': }
    package { 'httpd': }

}
