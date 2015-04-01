class lmn_skin_squid {

  anchor { 'lmn_skin_squid::begin' : } ~>
  class  { 'lmn_skin_squid::package' : } ~>
  class  { 'lmn_skin_squid::config' : } ~>
  class  { 'lmn_skin_squid::service' : } ~>
  anchor { 'lmn_skin_squid::end' : }

}

