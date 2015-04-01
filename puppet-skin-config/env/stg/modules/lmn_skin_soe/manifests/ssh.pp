class lmn_skin_soe::ssh {

  file {'/etc/ssh/sshd_config':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template("${module_name}/sshd_config.erb"),
    notify  => Service['sshd'],
  }

  ssh_authorized_key { 'kmcnally@MacBookPro':
      ensure => present,
      user   => 'root',
      type   => 'rsa',
      key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDwAE6FEYg7IvL8Kj9KDhOs4xtTKIIjlgTaq8q7axhcNCmT7zlGiFK2e8nJNOrT4ndCwDrpbv4LLKtxnwtpOf26yTTL4b8875Oedla6LCNYOFKGy8Mns2Xj5WtbaLNzvHFHzsujngykF68Mzg0udT2ScR+w9hBs/iTgaxv07Jh5XPME/y3yLPFMTR+yAsIZx5VTfVyasfcA2XsmIIu121iR2heGhplh4On9Xg4JPZN3YaLKC3IEmG+yu9j3XoMK/bi98AydJrLF3RuAXrPX27sfO73LA4kFQUdmKjcrVXtvM79jNqGFf+qK9K1AKFbSONgkXzai6Caru+iLqfAQoVtn',
    }

}
