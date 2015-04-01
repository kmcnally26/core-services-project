class lmn_skin_gitclient {
  anchor { 'lmn_skin_gitclient::begin' : } ~>
  class  { 'lmn_skin_gitclient::package' : } ~>
  class  { 'lmn_skin_gitclient::config' : } ~>
  anchor { 'lmn_skin_gitclient::end' : } 

}
