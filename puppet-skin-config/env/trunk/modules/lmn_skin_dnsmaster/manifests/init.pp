class lmn_skin_dnsmaster {
  anchor { 'lmn_skin_dnsmaster::begin' : } ~>
  class  { 'lmn_skin_dnsmaster::package' : } ~>
  class  { 'lmn_skin_dnsmaster::config' : } ~>
  class  { 'lmn_skin_dnsmaster::service' : } ~>
  anchor { 'lmn_skin_dnsmaster::end' : }

}

