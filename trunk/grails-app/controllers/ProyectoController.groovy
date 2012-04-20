

class ProyectoController {
    
    def index = { redirect(action:create,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ proyectoInstanceList: Proyecto.list( params ), proyectoInstanceTotal: Proyecto.count() ]
    }

    def show = {
        def proyectoInstance = Proyecto.get( params.id )

        if(!proyectoInstance) {
            flash.message = "Proyecto not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ proyectoInstance : proyectoInstance ] }
    }

    def delete = {
        def proyectoInstance = Proyecto.get( params.id )
        if(proyectoInstance) {
            try {
                proyectoInstance.delete(flush:true)
                flash.message = "Proyecto ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Proyecto ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Proyecto not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def proyectoInstance = Proyecto.get( params.id )

        if(!proyectoInstance) {
            flash.message = "Proyecto not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ proyectoInstance : proyectoInstance ]
        }
    }

    def update = {
        def proyectoInstance = Proyecto.get( params.id )
        if(proyectoInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(proyectoInstance.version > version) {
                    
                    proyectoInstance.errors.rejectValue("version", "proyecto.optimistic.locking.failure", "Another user has updated this Proyecto while you were editing.")
                    render(view:'edit',model:[proyectoInstance:proyectoInstance])
                    return
                }
            }
            proyectoInstance.properties = params
            if(!proyectoInstance.hasErrors() && proyectoInstance.save()) {
                flash.message = "Proyecto ${params.id} updated"
                redirect(action:show,id:proyectoInstance.id)
            }
            else {
                render(view:'edit',model:[proyectoInstance:proyectoInstance])
            }
        }
        else {
            flash.message = "Proyecto not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def proyectoInstance = new Proyecto()
        proyectoInstance.properties = params
        return ['proyectoInstance':proyectoInstance]
    }

    def save = {
        def proyectoInstance = new Proyecto(params)
        if(!proyectoInstance.hasErrors() && proyectoInstance.save()) {
            flash.message = "Proyecto ${proyectoInstance.id} created"
            redirect(action:show,id:proyectoInstance.id)
        }
        else {
             flash.message = "Los campos marcados con rojo,no deben de estar vacios para guardar "
            render(view:'create',model:[proyectoInstance:proyectoInstance])
        }
    }
  def searchAJAX = {

        def res = Proyecto.findAllByNameProyectoLike("%${params.query}%")

        //Create XML response
        render(contentType: "text/xml") {
	    results() {
	        res.each { re ->
		    result(){
		        name(re.nameProyecto)
                        //Optional id which will be available in onItemSelect
                        id(re.id)
		    }
		}
            }
        }
    }
  def mainProyecto={
    render(view:'mainProyecto')

  }
}
