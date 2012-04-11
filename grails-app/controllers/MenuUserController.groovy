class MenuUserController {
  def ConsultaService
   def index = {
    println "menu User --->"+params.idu
  def user=ConsultaService.findUserforLogin(params.idu)
      println user.id_area
     redirect(action:menuUser,id:user.id_area)
   }
   
  def menuUser={
   // def tematicas=ConsultaService.findTematicas(user.id_area);
    println "tematicas-->"+id
  //  render(view:menuUser,tematicas:tematicas)

  }
}
