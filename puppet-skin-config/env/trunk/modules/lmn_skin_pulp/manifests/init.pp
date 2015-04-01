class lmn_skin_pulp {
  anchor { 'lmn_skin_pulp::begin' : } ~>
  class  { 'lmn_skin_pulp::repo' : } ~>
  class  { 'lmn_skin_pulp::package' : } ~>
  class  { 'lmn_skin_pulp::config' : } ~>
  class  { 'lmn_skin_pulp::service' : } ~>
  anchor { 'lmn_skin_pulp::end' : }

}

