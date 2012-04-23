

class RolController {
    
    def index = { redirect(action:create,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ rolInstanceList: Rol.list( params ), rolInstanceTotal: Rol.count() ]
    }

    def show = {
        def rolInstance = Rol.get( params.id )

        if(!rolInstance) {
            flash.message = "Rol not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ rolInstance : rolInstance ] }
    }

    def delete = {
        def rolInstance = Rol.get( params.id )
        if(rolInstance) {
            try {
                rolInstance.delete(flush:true)
                flash.message = "Rol ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Rol ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Rol not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def rolInstance = Rol.get( params.id )

        if(!rolInstance) {
            flash.message = "Rol not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ rolInstance : rolInstance ]
        }
    }

    def update = {
        def rolInstance = Rol.get( params.id )
        if(rolInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(rolInstance.version > version) {
                    
                    rolInstance.errors.rejectValue("version", "rol.optimistic.locking.failure", "Another user has updated this Rol while you were editing.")
                    render(view:'edit',model:[rolInstance:rolInstance])
                    return
                }
            }
            rolInstance.properties = params
            if(!rolInstance.hasErrors() && rolInstance.save()) {
                flash.message = "Rol ${params.id} updated"
                redirect(action:show,id:rolInstance.id)
            }
            else {
                render(view:'edit',model:[rolInstance:rolInstance])
            }
        }
        else {
            flash.message = "Rol not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def rolInstance = new Rol()
        rolInstance.properties = params
        return ['rolInstance':rolInstance]
    }

    def save = {
        def rolInstance = new Rol(params)
        if(!rolInstance.hasErrors() && rolInstance.save()) {
            flash.message = "Rol ${rolInstance.id} created"
            redirect(action:show,id:rolInstance.id)
        }
       else {
          flash.message = "Los campos marcados en rojo no deben de estar vacios para poder guardar"
            render(view:'create',model:[rolInstance:rolInstance])
        }
    }
  def searchAJAX = {

        def res = Rol.findAllByNameRolLike("%${params.query}%")

        //Create XML response
        render(contentType: "text/xml") {
	    results() {
	        res.each { re ->
		    result(){
		        name(re.nameRol)
                        //Optional id which will be available in onItemSelect
                        id(re.id)
		    }
		}
            }
        }
    }
}
