class lmn_skin_foreman {
  anchor { 'lmn_skin_foreman::begin' : } ~>
  class  { 'lmn_skin_foreman::package' : } ~>
  class  { 'lmn_skin_foreman::config' : } ~>
  class  { 'lmn_skin_foreman::service' : } ~>
  anchor { 'lmn_skin_foreman::end' : }

}

