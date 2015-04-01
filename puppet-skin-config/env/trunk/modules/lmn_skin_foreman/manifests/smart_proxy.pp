class lmn_skin_foreman::smart_proxy {
  anchor { 'lmn_skin_foreman::smart_proxy::begin' : } ~>
  class  { 'lmn_skin_foreman::smart_proxy::package' : } ~>
  class  { 'lmn_skin_foreman::smart_proxy::config' : } ~>
  class  { 'lmn_skin_foreman::smart_proxy::service' : } ~>
  anchor { 'lmn_skin_foreman::smart_proxy::end' : }

}

