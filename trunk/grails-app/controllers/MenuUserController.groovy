class MenuUserController {
  def ConsultaService
   def index = {
   redirect(action:menuUser,params:params)
    }
  def menuUser={
    def idarea=session.user.id_area
    println idarea
   def tematicas=ConsultaService.findTematicas(idarea)
     println tematicas
   def examen=ConsultaService.findTests()
     render(view:'menuUser',model:[tematicas:tematicas,examen:examen])
  }
   
 
}
