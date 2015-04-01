class lmn_skin_soe::repo {

  yumrepo { 'base-centos-6.5-os' :
    descr    => 'Centos 6.5',
    enabled  => 1,
    gpgcheck => 0,
    baseurl  => 'https://172.16.105.132/pulp/repos/centos/6/os/x86_64/Packages/',
    sslverify => False,
  }

  yumrepo { 'external-puppet-labs' :
    descr    => 'Puppet Labs Products',
    enabled  => 1,
    gpgcheck => 0,
    baseurl  => 'https://172.16.105.132/pulp/repos/centos/6/external/puppetlabs/Products/',
    sslverify => False,
  }

  yumrepo { 'external-puppet-dep-labs' :
    descr    => 'Puppet Labs Dependencies',
    enabled  => 1,
    gpgcheck => 0,
    baseurl  => 'https://172.16.105.132/pulp/repos/centos/6/external/puppetlabs/Dependencies/',
    sslverify => False,
  }

  yumrepo { 'external-foreman' :
    descr    => 'Foreman 1.4',
    enabled  => 1,
    gpgcheck => 0,
    baseurl  => 'https://172.16.105.132/pulp/repos/centos/6/external/foreman/',
    sslverify => False,
  }

  yumrepo { 'external-foreman-plugins' :
    descr    => 'Foreman 1.4 Plugins',
    enabled  => 1,
    gpgcheck => 0,
    baseurl  => 'https://172.16.105.132/pulp/repos/centos/6/external/foreman-plugins/',
    sslverify => False,
  }

  yumrepo { 'external-centos-SCL' :
    descr    => 'CentOS SCL',
    enabled  => 1,
    gpgcheck => 0,
    baseurl  => 'https://172.16.105.132/pulp/repos/centos/6/external/SCL/',
    sslverify => False,
  }


}
