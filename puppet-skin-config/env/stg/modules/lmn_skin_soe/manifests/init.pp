class lmn_skin_soe {
  anchor { 'lmn_skin_soe::begin' : } ~>
  class  { 'lmn_skin_soe::root' : } ~>
  class  { 'lmn_skin_soe::ssh' : } ~>
  class  { 'lmn_skin_soe::repo' : } ~>
  class  { 'lmn_skin_soe::package' : } ~>
  class  { 'lmn_skin_soe::config' : } ~>
  class  { 'lmn_skin_soe::service' : } ~>
  anchor { 'lmn_skin_soe::end' : }

}

