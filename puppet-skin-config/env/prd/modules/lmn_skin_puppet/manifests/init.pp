class lmn_skin_puppet {
  anchor { 'lmn_skin_puppet::begin' : } ~>
  class  { 'lmn_skin_puppet::package' : } ~>
  class  { 'lmn_skin_puppet::config' : } ~>
#  class  { 'lmn_skin_puppet::service' : } ~>
  anchor { 'lmn_skin_puppet::end' : }

}

