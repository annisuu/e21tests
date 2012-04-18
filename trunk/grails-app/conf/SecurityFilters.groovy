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
   
  accessControl { true }
  }
}