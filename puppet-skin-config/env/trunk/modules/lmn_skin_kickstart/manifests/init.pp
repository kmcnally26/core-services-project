class lmn_skin_kickstart {
  anchor { 'lmn_skin_kickstart::begin' : } ~>
  class  { 'lmn_skin_kickstart::package' : } ~>
  class  { 'lmn_skin_kickstart::config' : } ~>
  class  { 'lmn_skin_kickstart::service' : } ~>
  anchor { 'lmn_skin_kickstart::end' : }

}

