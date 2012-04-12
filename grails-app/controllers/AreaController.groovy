

class AreaController {
    
    def index = { redirect(action:create,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ areaInstanceList: Area.list( params ), areaInstanceTotal: Area.count() ]
    }

    def show = {
        def areaInstance = Area.get( params.id )

        if(!areaInstance) {
            flash.message = "Area not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ areaInstance : areaInstance ] }
    }

    def delete = {
        def areaInstance = Area.get( params.id )
        if(areaInstance) {
            try {
                areaInstance.delete(flush:true)
                flash.message = "Area ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Area ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Area not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def areaInstance = Area.get( params.id )

        if(!areaInstance) {
            flash.message = "Area not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ areaInstance : areaInstance ]
        }
    }

    def update = {
        def areaInstance = Area.get( params.id )
        if(areaInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(areaInstance.version > version) {
                    
                    areaInstance.errors.rejectValue("version", "area.optimistic.locking.failure", "Another user has updated this Area while you were editing.")
                    render(view:'edit',model:[areaInstance:areaInstance])
                    return
                }
            }
            areaInstance.properties = params
            if(!areaInstance.hasErrors() && areaInstance.save()) {
                flash.message = "Area ${params.id} updated"
                redirect(action:show,id:areaInstance.id)
            }
            else {
                render(view:'edit',model:[areaInstance:areaInstance])
            }
        }
        else {
            flash.message = "Area not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def areaInstance = new Area()
        areaInstance.properties = params
        return ['areaInstance':areaInstance]
    }

    def save = {
        def areaInstance = new Area(params)
        if(!areaInstance.hasErrors() && areaInstance.save()) {
            flash.message = "Area ${areaInstance.id} created"
            redirect(action:show,id:areaInstance.id)
        }
        else {
          flash.message = "Verifique los campos remarcados con rojo"
            render(view:'create',model:[areaInstance:areaInstance])
        }
    }
   def searchAJAX = {

        def res = Area.findAllByNameAreaLike("%${params.query}%")
         println res
        //Create XML response
        render(contentType: "text/xml") {
	    results() {
	        res.each { re ->
		    result(){
		        name(re.nameArea)
                        //Optional id which will be available in onItemSelect
                        id(re.id)
		    }
		}
            }
        }
    }
}
