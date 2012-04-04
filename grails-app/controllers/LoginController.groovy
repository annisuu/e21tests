class LoginController {
    def ConsultaService
    def index = {redirect(action:login,params:params) }
    def login = {}
    def manejaLogin={
      def user=ConsultaService.findUserforLogin(params.pasword)
      println "user:"+user.idu
      if(!user.idu)
      {
        flash.message="Usuario no encontrado"
        redirect(action:'login')
        return
      }
      else
      {
        session.user=user
        println user.id_rol
        if(user.id_rol==1)
        {
          println "Is Admin"
        redirect(controller:'area')
        }
        if(user.id_rol==2)
        {
           println "Is Instructor"
        redirect(controller:'doQuestion')
        }
        if(user.id_rol==3)
        {
           println "Is User"
        redirect(controller:'test')
        }
      }
    }
  def logout={
     if(session.user){
       session.user=null
       redirect(action:'login')

  }
  }

}
