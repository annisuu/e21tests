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
    println params.counter
    if(params.counter==null)
    {
      params.counter=1
    }
    else
    {
      println "traia "+params.counter
    }
  

        def question=ConsultaService.startTest(params.idTest,params.counter);
        println "question:: "+question+":"
        render(view:'showTest',model:[question:question,nameTest:params.nameTest,idTest:params.idTest])
     
    
  }
  
  def save={
    int counter=Integer.parseInt(params.counter)
    def question=ConsultaService.startTest(params.idTest,counter);
    println params.respuesta
    def res= new DoAnswer()
    res.idTest=params.idTest
    res.idquestion=question.id_question
    res.userid=params.iduser
    res.answer=params.respuesta
    if(question.trueanswer.equals(params.respuesta))
    {
      res.score="1"
    }
    else
    {
      res.score="0"
    }

    if(res.save())
    {
      println "se guardo..:"
    }
    println "se lleno con-->"+params.idTest
    counter=counter+1;
    params.counter=counter
    println "result: +"+params.counter
    if(params.counter<=10)
    {
    redirect (action:showTest,params:params)
    }
    else
    {
       redirect (action:endTest,params:params)
    }
  }
  def endTest={
    def calificacion=ConsultaService.finalScore(params.iduser,params.idTest);
    println "final cal: "+calificacion.score
    render(view:'endTest',model:[score:calificacion.score])
  }

}

