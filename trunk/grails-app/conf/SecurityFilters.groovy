class SecurityFilters {

  def filters = {
      GestionEventosFilter(controller:'*', action:'*') { 
           before = {
                if(!session.user && !controllerName.equals('login')

                    ) {

                    redirect(controller:'login')
                    return false
                     }
             else
                {
                }
                   }
           }
    GestionEventosFilter(controller:'area') {
           before = {
                if(!session.user) {

                    redirect(controller:'login')
                    return false
                     }
             else
                {
                  println "imprimiendo el rol:"+session.user.id_rol
                  if(session.user.id_rol!="1"){
                     redirect(controller:'login')
                    return false
                  }

                }
                   }
           }
  accessControl { true }
  }
}