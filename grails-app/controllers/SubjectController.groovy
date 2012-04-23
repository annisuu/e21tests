

class SubjectController {
    
    def index = { redirect(action:create,params:params) }
     def ConsultaService

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
      def area=ConsultaService.buscaArea()

        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ subjectInstanceList: Subject.list( params ), subjectInstanceTotal: Subject.count(),area:area ]
    }

    def show = {
      def area=ConsultaService.buscaArea()
        def subjectInstance = Subject.get( params.id )

        if(!subjectInstance) {
            flash.message = "Subject not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ subjectInstance : subjectInstance,area:area ] }
    }

    def delete = {
        def subjectInstance = Subject.get( params.id )
        if(subjectInstance) {
            try {
                subjectInstance.delete(flush:true)
                flash.message = "Subject ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Subject ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Subject not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {

      def area=ConsultaService.buscaArea()

        def subjectInstance = Subject.get( params.id )
        if(!subjectInstance) {
            flash.message = "Subject not found with id ${params.id}"
            redirect(action:list,area:area)
        }
        else {
            return [ subjectInstance : subjectInstance,area:area ]
        }
    }

    def update = {
        def subjectInstance = Subject.get( params.id )
        if(subjectInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(subjectInstance.version > version) {
                    
                    subjectInstance.errors.rejectValue("version", "subject.optimistic.locking.failure", "Another user has updated this Subject while you were editing.")
                    render(view:'edit',model:[subjectInstance:subjectInstance])
                    return
                }
            }
            subjectInstance.properties = params
            if(!subjectInstance.hasErrors() && subjectInstance.save()) {
                flash.message = "Subject ${params.id} updated"
                redirect(action:show,id:subjectInstance.id)
            }
            else {
                render(view:'edit',model:[subjectInstance:subjectInstance])
            }
        }
        else {
            flash.message = "Subject not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def area=ConsultaService.buscaArea()
        println("Area"+area.name_area)
        def subjectInstance = new Subject()
        subjectInstance.properties = params
        return ['subjectInstance':subjectInstance,area:area]
    }

    def save = {
       def area=ConsultaService.buscaArea()

        def subjectInstance = new Subject(params)
      if(subjectInstance.idArea!="" && subjectInstance.idCompany!="" && subjectInstance.idPost!="" && subjectInstance.idProyecto!="")
      {
        if(!subjectInstance.hasErrors() && subjectInstance.save()) {
            flash.message = "User ${subjectInstance.id} created"
            redirect(action:show,id:subjectInstance.id)
        }
        else {


           flash.message =  "Los campos marcados en rojo no deben de estar vacios para poder guardar"
            render(view:'create',model:[subjectInstance:subjectInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post])
        }
      }
      else
      {
        flash.message =  "Dej&oacute; alg&uacute;n combo sin seleccionar"
                   render(view:'create',model:[subjectInstance:subjectInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post])

      }
        }
   def searchAJAX = {

        def res = Subject.findAllByNameSubjectLike("%${params.query}%")

        //Create XML response
        render(contentType: "text/xml") {
	    results() {
	        res.each { re ->
		    result(){
		        name(re.nameSubject)
                        //Optional id which will be available in onItemSelect
                        id(re.id)
		    }
		}
            }
        }
    }
}
