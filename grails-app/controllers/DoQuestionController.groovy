

class DoQuestionController {
    
    def index = { redirect(action:create,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ doQuestionInstanceList: DoQuestion.list( params ), doQuestionInstanceTotal: DoQuestion.count() ]
    }

    def show = {
        def doQuestionInstance = DoQuestion.get( params.id )

        if(!doQuestionInstance) {
            flash.message = "DoQuestion not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ doQuestionInstance : doQuestionInstance ] }
    }

    def delete = {
        def doQuestionInstance = DoQuestion.get( params.id )
        if(doQuestionInstance) {
            try {
                doQuestionInstance.delete(flush:true)
                flash.message = "DoQuestion ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "DoQuestion ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "DoQuestion not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def doQuestionInstance = DoQuestion.get( params.id )

        if(!doQuestionInstance) {
            flash.message = "DoQuestion not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ doQuestionInstance : doQuestionInstance ]
        }
    }

    def update = {
        def doQuestionInstance = DoQuestion.get( params.id )
        if(doQuestionInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(doQuestionInstance.version > version) {
                    
                    doQuestionInstance.errors.rejectValue("version", "doQuestion.optimistic.locking.failure", "Another user has updated this DoQuestion while you were editing.")
                    render(view:'edit',model:[doQuestionInstance:doQuestionInstance])
                    return
                }
            }
            doQuestionInstance.properties = params
            if(!doQuestionInstance.hasErrors() && doQuestionInstance.save()) {
                flash.message = "DoQuestion ${params.id} updated"
                redirect(action:show,id:doQuestionInstance.id)
            }
            else {
                render(view:'edit',model:[doQuestionInstance:doQuestionInstance])
            }
        }
        else {
            flash.message = "DoQuestion not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def doQuestionInstance = new DoQuestion()
        doQuestionInstance.properties = params

        return ['doQuestionInstance':doQuestionInstance]
    }

    def save = {
        def doQuestionInstance = new DoQuestion(params)
        def q =new Question();
        q.id_test=doQuestionInstance.id_test
        q.question=doQuestionInstance.questiontext
        if(q.save())
        {
          println "Se guardo la pregunta numero: "+q.id
          def a=new Answer();
          a.id_question=q.id
          a.answer=doQuestionInstance.answer1
          a.image=doQuestionInstance.image1
          a.tf=doQuestionInstance.tf1
          if(a.save())
          {
            println "Se guardo la primera respuesta"+a.id
            def a2=new Answer();
            a2.id_question=q.id
            a2.answer=doQuestionInstance.answer2
            a2.image=doQuestionInstance.image2
            a2.tf=doQuestionInstance.tf2
            if(a2.save())
            {
              println "Se guardo la segunda  respuesta"+a2.id
              def a3=new Answer();
              a3.id_question=q.id
              a3.answer=doQuestionInstance.answer3
              a3.image=doQuestionInstance.image3
              a3.tf=doQuestionInstance.tf3
              if(a3.save())
              {
                println "Se guardo la tercera  respuesta"+a3.id
              }
            }
          }
        }
       println "good"
    }
}
