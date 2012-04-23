class StartestController {
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

def welcome={
    println params

  render(view:'welcome',model:[nameTest:params.nameTest,idTest:params.idTest])
  
}
  def showTest={
        println "El contador esta en: "+params.counter
    def counter=1;
    if(params.counter!=null)
    {
     counter=params.counter
    }
    println "Se va a buscar la pregunta numero: "+counter
        println "test:: "+params.idTest
        def question=ConsultaService.startTest(params.idTest,counter);
        println "question"+counter+":"+ question
        render(view:'showTest',model:[question:question,idTest:params.idTest,counter:counter]) 
     
    
  }
  
  def save={
    println "contador llegando: "+params.counter
    println "contador llegando: "+params.question
    def question=params.question
    int counter=Integer.parseInt(params.counter)
    def idTest=params.idTest
    println "contador en save new: "+counter
    counter=counter+1;
    params.counter=counter
     println "comparando....  "+counter
    if(counter<=10)
    {
     redirect(action:showTest,params:params)
    }
    else
    {
       redirect(action:menuUser)
    }
   printl"Hola Ana...."+counter
  }

}

