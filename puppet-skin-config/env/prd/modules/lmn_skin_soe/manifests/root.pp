class lmn_skin_soe::root {

  user { 'root':
    ensure           => 'present',
    comment          => 'root',
    gid              => '0',
    home             => '/root',
    password         => '$6$LV1vaaVuiYwlYGaN$iFg4EidI2vKpmunOWQwCM9xQ96CkmxEmON1RoUCvgeE0Wjt5BlA/HOWwOIDXOJ9SjEyDQgzaokk1t64ThpANq0',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '0',
  }

# All clients have puppet roots id_rsa key so they can get to git repo

  file {'/root/.bashrc':
    ensure => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template("${module_name}/roots_bashrc.erb"),
  }


  file { '/root/.ssh/id_rsa' :
    owner   => 'root',
    group   => 'root',
    mode    => '0400',
    content => template("${module_name}/roots.id_rsa.erb"),
  }


}
