class StartestController {
  def ConsultaService  
    def index = {
   redirect(action:menuUser,params:params)
    }
  def menuUser={
    def tDone=ConsultaService.findTestDone(session.user.idu)
    def idarea=session.user.id_area
    println "done_:"+tDone
   def tematicas=ConsultaService.findTematicas(idarea)
     println tematicas
   def examen=ConsultaService.findTests()
     render(view:'menuUser',model:[tematicas:tematicas,examen:examen,tDone:tDone])
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
    def revisa=ConsultaService.findQuestion(params.iduser,question.id_question)
   println "revision"+revisa
    if(revisa==true)
    {

      flash.message= "Ya se contestó antes la pregunta "
      counter=counter+1;
    params.counter=counter
      if(params.counter<=10)
      {
    redirect (action:showTest,params:params)
      }
      else
      {
        redirect (action:endTest,params:params)
        
      }
    }
    else
    {
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
    
  }
  def endTest={
    def calificacion=ConsultaService.finalScore(params.iduser,params.idTest);
    def result= new Results()
    result.userid=params.iduser
    result.idTest=params.idTest
    result.finalscore=calificacion.score
    result.enddate=new Date();
    if(result.save())
    {
    println "final cal: "+calificacion.score
    render(view:'endTest',model:[score:calificacion.score])
    }
    else
    {
      println "no se guardo la calificacion"
      flash.message="No se pudo guardar la calificación"
      render(view:'endTest',model:[score:calificacion.score])
    }

    }

  def Welcome={
    render (view:'Welcome')

  }
}