## Default node will pick up any host not in here

  node default {
    class { 'lmn_skin_soe': }
  }

  node /kickstart.example.com/ {
    class {'lmn_skin_soe': }
    class {'lmn_skin_kickstart': }
    class {'lmn_skin_foreman::smart_proxy': }
    class {'lmn_skin_gitclient': }
  }

  node /pulp.example.com/ {
    class {'lmn_skin_soe': }
    class {'lmn_skin_pulp': }
    class {'lmn_skin_gitclient': }
  }

  node /puppet.example.com/ {
    class {'lmn_skin_soe': }
    class {'lmn_skin_puppet': }
    class {'lmn_skin_passenger': }
    class {'lmn_skin_foreman::smart_proxy': }
  }

  node /dns.example.com/ {
    class {'lmn_skin_soe': }
    class {'lmn_skin_dnsmaster': }
    class {'lmn_skin_foreman::smart_proxy': }
  }

  node /foreman.example.com/ {
    class {'lmn_skin_soe': }
    class {'lmn_skin_foreman': }
    class {'lmn_skin_gitclient': }
  }

  node /test34.example.com/ {
    class {'lmn_skin_soe': }
    class {'lmn_skin_gitclient': }
  }

