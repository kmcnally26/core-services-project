class lmn_skin_passenger {
  anchor { 'lmn_skin_passenger::begin' : } ~>
  class  { 'lmn_skin_passenger::package' : } ~>
  class  { 'lmn_skin_passenger::config' : } ~>
  class  { 'lmn_skin_passenger::service' : } ~>
  anchor { 'lmn_skin_passenger::end' : }

}

