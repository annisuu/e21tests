

class TestController {
    
    def index = { redirect(action:create,params:params) }
     def ConsultaService
    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
      def area=ConsultaService.buscaArea()
      def subject=ConsultaService.buscaSubject()
      println "subject de :::"+subject.id
       println "id area de :::"+subject.name
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ testInstanceList: Test.list( params ), testInstanceTotal: Test.count(),area:area,subject:subject ]
    }

    def show = {
         def area=ConsultaService.buscaArea()
         def subject=ConsultaService.buscaSubject()
        def testInstance = Test.get( params.id )

        if(!testInstance) {
            flash.message = "Test not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ testInstance : testInstance,area:area,subject:subject ] }
    }

    def delete = {
        def testInstance = Test.get( params.id )
        if(testInstance) {
            try {
                testInstance.delete(flush:true)
                flash.message = "Test ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Test ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Test not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
      def area=ConsultaService.buscaArea()
       def subject=ConsultaService.buscaSubject()
        def testInstance = Test.get( params.id )

        if(!testInstance) {
            flash.message = "Test not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ testInstance : testInstance,area:area,subject:subject]
        }
    }

    def update = {
        def testInstance = Test.get( params.id )
        if(testInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(testInstance.version > version) {
                    
                    testInstance.errors.rejectValue("version", "test.optimistic.locking.failure", "Another user has updated this Test while you were editing.")
                    render(view:'edit',model:[testInstance:testInstance])
                    return
                }
            }
            testInstance.properties = params
            if(!testInstance.hasErrors() && testInstance.save()) {
                flash.message = "Test ${params.id} updated"
                redirect(action:show,id:testInstance.id)
            }
            else {
                render(view:'edit',model:[testInstance:testInstance])
            }
        }
        else {
            flash.message = "Test not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def testInstance = new Test()
        testInstance.properties = params
        def area=ConsultaService.buscaArea()
        def subject=ConsultaService.buscaSubject()
        return ['testInstance':testInstance,subject:subject,area:area]
    }

    def save = {
        def testInstance = new Test(params)
        if(!testInstance.hasErrors() && testInstance.save()) {
            flash.message = "Test ${testInstance.id} created"
            redirect(action:show,id:testInstance.id)
        }

        else {
            flash.message = "Los campos marcados en rojo no deben de estar vacios para poder guardar"
          def area=ConsultaService.buscaArea()
        def subject=ConsultaService.buscaSubject()
            render(view:'create',model:[testInstance:testInstance,area:area,subject:subject])
        }
    }
   def searchAJAX = {

        def res = Test.findAllByNameTestLike("%${params.query}%")
         println res
        //Create XML response
        render(contentType: "text/xml") {
	    results() {
	        res.each { re ->
		    result(){
		        name(re.nameTest)
                        //Optional id which will be available in onItemSelect
                        id(re.id)
		    }
		}
            }
        }
    }
}
