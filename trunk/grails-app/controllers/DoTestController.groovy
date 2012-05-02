

class DoTestController {
    
    def index = { redirect(action:create,params:params) }
    def ConsultaService
    String appPath = System.getProperties().getProperty("user.dir");
    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ doTestInstanceList: DoTest.list( params ), doTestInstanceTotal: DoTest.count() ]
    }

    def show = {
        def doTestInstance = DoTest.get( params.id )

        if(!doTestInstance) {
            flash.message = "DoTest not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ doTestInstance : doTestInstance ] }
    }

    def delete = {
        def doTestInstance = DoTest.get( params.id )
        if(doTestInstance) {
            try {
                doTestInstance.delete(flush:true)
                flash.message = "DoTest ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "DoTest ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "DoTest not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def doTestInstance = DoTest.get( params.id )

        if(!doTestInstance) {
            flash.message = "DoTest not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ doTestInstance : doTestInstance ]
        }
    }

    def update = {
        def doTestInstance = DoTest.get( params.id )
        if(doTestInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(doTestInstance.version > version) {
                    
                    doTestInstance.errors.rejectValue("version", "doTest.optimistic.locking.failure", "Another user has updated this DoTest while you were editing.")
                    render(view:'edit',model:[doTestInstance:doTestInstance])
                    return
                }
            }
            doTestInstance.properties = params
            if(!doTestInstance.hasErrors() && doTestInstance.save()) {
                flash.message = "DoTest ${params.id} updated"
                redirect(action:show,id:doTestInstance.id)
            }
            else {
                render(view:'edit',model:[doTestInstance:doTestInstance])
            }
        }
        else {
            flash.message = "DoTest not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
       def area=ConsultaService.buscaArea()
      def subject=ConsultaService.buscaSubject()
        def doTestInstance = new DoTest()
        doTestInstance.properties = params
        return ['doTestInstance':doTestInstance,area:area,subject:subject]
    }
  def consultarSubject={
    println "consulta subject"
    
    def subject=ConsultaService.findSubjectByArea(params.id_area.toString())
    println ":::"+subject
     render(template:'subjects',model:[subject:subject])

  }

    def save = {
      def area=ConsultaService.buscaArea()
      def subject=ConsultaService.findSubjectByArea(params.idArea.toString())
      def doTestInstance = new DoTest(params)
     // println "validando..."+doTestInstance.validate()
      if(doTestInstance.validate()){
      def test =new Test()
        println "dentrodetest"
      test.nameTest=doTestInstance.nameTest
      test.idSubject=doTestInstance.idSubject
       if(test.save())
      {
      def question = new DoQuestion()
      println "id test:::  "+test.id
      question.id_test=test.id
      question.questiontext=doTestInstance.question1
      question.answer1=doTestInstance.answer1A
      //subir imagen 1
      question.image1=subirFile("image1A")

      question.answer2=doTestInstance.answer1B
      //Subir imagen 2
      question.image2=subirFile("image1B")

      question.answer3=doTestInstance.answer1C
      //subir imagen 3
      question.image3=subirFile("image1C")
      question.trueanswer=doTestInstance.trueanswer1
      question.numberq="1"
        if(question.save())
        {
          println "question 1"
          def question2 = new DoQuestion()
          println "id test:::  "+test.id
          question2.id_test=test.id
          question2.questiontext=doTestInstance.question2
          question2.answer1=doTestInstance.answer2A
          //subir imagen 2
          question2.image1=subirFile("image2A")
          question2.answer2=doTestInstance.answer2B
          //Subir imagen 2
          question2.image2=subirFile("image2B")
          question2.answer3=doTestInstance.answer2C
          //subir imagen 3
          question2.image3=subirFile("image2C")
          question2.trueanswer=doTestInstance.trueanswer2
          question2.numberq="2"

          println question2
            if(question2.save())
            {
              println "question 3"
          def question3 = new DoQuestion()
          println "id test:::  "+test.id
          question3.id_test=test.id
          question3.questiontext=doTestInstance.question3
          question3.answer1=doTestInstance.answer3A
          //subir imagen 3
          question3.image1=subirFile("image3A")
          question3.answer2=doTestInstance.answer3B
          //Subir imagen 3
          question3.image2=subirFile("image3B")
          question3.answer3=doTestInstance.answer3C
          //subir imagen 3
          question3.image3=subirFile("image3C")
          question3.trueanswer=doTestInstance.trueanswer3
          question3.numberq="3"              
            if(question3.save())
            {
                  println "question 3"
              def question4 = new DoQuestion()
              println "id test:::  "+test.id
              question4.id_test=test.id
              question4.questiontext=doTestInstance.question4
              question4.answer1=doTestInstance.answer4A
              //subir imagen 4
              question4.image1=subirFile("image4A")
              question4.answer2=doTestInstance.answer4B
              //Subir imagen 4
              question4.image2=subirFile("image4B")
              question4.answer3=doTestInstance.answer4C
              //subir imagen 3
              question4.image3=subirFile("image4C")
              question4.trueanswer=doTestInstance.trueanswer4
              question4.numberq="4" 
                if(question4.save())
                {
                  println "question 4"
              def question5 = new DoQuestion()
              println "id test:::  "+test.id
              question5.id_test=test.id
              question5.questiontext=doTestInstance.question5
              question5.answer1=doTestInstance.answer5A
              //subir imagen 5
              question5.image1=subirFile("image5A")
              question5.answer2=doTestInstance.answer5B
              //Subir imagen 5
              question5.image2=subirFile("image5B")
              question5.answer3=doTestInstance.answer5C
              //subir imagen 3
              question5.image3=subirFile("image5C")
              question5.trueanswer=doTestInstance.trueanswer5
              question5.numberq="5"
                if(question5.save())
                {
                  println "question 5"
                  def question6 = new DoQuestion()
                  println "id test:::  "+test.id
                  question6.id_test=test.id
                  question6.questiontext=doTestInstance.question6
                  question6.answer1=doTestInstance.answer6A
                  //subir imagen 6
                  question6.image1=subirFile("image6A")
                  question6.answer2=doTestInstance.answer6B
                  //Subir imagen 6
                  question6.image2=subirFile("image6B")
                  question6.answer3=doTestInstance.answer6C
                  //subir imagen 3
                  question6.image3=subirFile("image6C")
                  question6.trueanswer=doTestInstance.trueanswer6
                  question6.numberq="6" 
                    if(question6.save())
                    {
                      println "question 6"
                  def question7 = new DoQuestion()
                  println "id test:::  "+test.id
                  question7.id_test=test.id
                  question7.questiontext=doTestInstance.question7
                  question7.answer1=doTestInstance.answer7A
                  //subir imagen 7
                  question7.image1=subirFile("image7A")
                  question7.answer2=doTestInstance.answer7B
                  //Subir imagen 7
                  question7.image2=subirFile("image7B")
                  question7.answer3=doTestInstance.answer7C
                  //subir imagen 3
                  question7.image3=subirFile("image7C")
                  question7.trueanswer=doTestInstance.trueanswer7
                  question7.numberq="7" 
                    if(question7.save())
                    {
                      println "question 7"
                      def question8 = new DoQuestion()
                  println "id test:::  "+test.id
                  question8.id_test=test.id
                  question8.questiontext=doTestInstance.question8
                  question8.answer1=doTestInstance.answer8A
                  //subir imagen 8
                  question8.image1=subirFile("image8A")
                  question8.answer2=doTestInstance.answer8B
                  //Subir imagen 8
                  question8.image2=subirFile("image8B")
                  question8.answer3=doTestInstance.answer8C
                  //subir imagen 3
                  question8.image3=subirFile("image8C")
                  question8.trueanswer=doTestInstance.trueanswer8
                  question8.numberq="8"
                    if(question8.save())
                    {
                      println "question 8"
                      def question9 = new DoQuestion()
                  println "id test:::  "+test.id
                  question9.id_test=test.id
                  question9.questiontext=doTestInstance.question9
                  question9.answer1=doTestInstance.answer9A
                  //subir imagen 9
                  question9.image1=subirFile("image9A")
                  question9.answer2=doTestInstance.answer9B
                  //Subir imagen 9
                  question9.image2=subirFile("image9B")
                  question9.answer3=doTestInstance.answer9C
                  //subir imagen 3
                  question9.image3=subirFile("image9C")
                  question9.trueanswer=doTestInstance.trueanswer9
                  question9.numberq="9"
                    if(question9.save())
                    {
                      println "question 9"
                      def question10 = new DoQuestion()
                  println "id test:::  "+test.id
                  question10.id_test=test.id
                  question10.questiontext=doTestInstance.question10
                  question10.answer1=doTestInstance.answer10A
                  //subir imagen 10
                  question10.image1=subirFile("image10A")
                  question10.answer2=doTestInstance.answer10B
                  //Subir imagen 10
                  question10.image2=subirFile("image10B")
                  question10.answer3=doTestInstance.answer10C
                  //subir imagen 3
                  question10.image3=subirFile("image10C")
                  question10.trueanswer=doTestInstance.trueanswer10
                  question10.numberq="10" 
                    if(question10.save())
                    {
                      println "question 10"
                      render(view:'save')
                    }
                    else {

                        render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
                    }
                    }
                    else {
                        render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
                    }
                    }
                    else {
                        render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
                    }
                    }
                    else {
                        render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
                    }
                    }
                    else {
                        render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
                    }
                                
                }
                else {
                    render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
                }
                }
                else {
                    render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
                }
    
            }
            else {
                render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
            }
    
            }
            else {
                render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
            }
        }
        else {
            render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
        }

      }   else {

            render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])
        }
    }
      else
      {
        flash.message = "Verifique los campos remarcados con rojo de todas las preguntas"        
        render(view:'create',model:[doTestInstance:doTestInstance,area:area,subject:subject])

       
      }

    }
public String  subirFile(String up)
  {  println "subiedo... "

     def files = request.getFileMap()
     def file=files.get(up)
     String fileName = file.getOriginalFilename()
    def savepath=appPath+"\\web-app\\images\\upload\\imagesQuestion\\";
    println savepath
    if(fileName!="")
    {


            byte[] data=file.getBytes()
            File dir=new File(savepath)//some path...
            if(!dir.exists()){
               dir.mkdirs()
            }

            File actualFile=new File(savepath, fileName)
            actualFile.withOutputStream {out ->
                   out.write data
            }
     return fileName
    }
    else
    {
      println "no hay archivo"+up
      return " "
    }

  }
}
