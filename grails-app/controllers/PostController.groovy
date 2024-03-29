

class PostController {
    
    def index = { redirect(action:create,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ postInstanceList: Post.list( params ), postInstanceTotal: Post.count() ]
    }

    def show = {
        def postInstance = Post.get( params.id )

        if(!postInstance) {
            flash.message = "Cargo no encontrado ${params.id}"
            redirect(action:list)
        }
        else { return [ postInstance : postInstance ] }
    }

    def delete = {
        def postInstance = Post.get( params.id )
        if(postInstance) {
            try {
                postInstance.delete(flush:true)
                flash.message = "Cergo ${params.id} Eliminado"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Cargo ${params.id} no pudp ser Eliminado"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Cargo no encontrado ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def postInstance = Post.get( params.id )

        if(!postInstance) {
            flash.message = "Cargo no encontrado ${params.id}"
            redirect(action:list)
        }
        else {
            return [ postInstance : postInstance ]
        }
    }

    def update = {
        def postInstance = Post.get( params.id )
        if(postInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(postInstance.version > version) {
                    
                    postInstance.errors.rejectValue("version", "post.optimistic.locking.failure", "Another user has updated this Post while you were editing.")
                    render(view:'edit',model:[postInstance:postInstance])
                    return
                }
            }
            postInstance.properties = params
            if(!postInstance.hasErrors() && postInstance.save()) {
                flash.message = "Cargo ${params.id} Actualizado"
                redirect(action:show,id:postInstance.id)
            }
            else {
                render(view:'edit',model:[postInstance:postInstance])
            }
        }
        else {
            flash.message = "Cargo no encontrado ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def postInstance = new Post()
        postInstance.properties = params
        return ['postInstance':postInstance]
    }

    def save = {
        def postInstance = new Post(params)
        if(!postInstance.hasErrors() && postInstance.save()) {
            flash.message = "Cargo ${postInstance.id} Agregado"
            redirect(action:show,id:postInstance.id)
        }
        else {
          flash.message =  "Los campos marcados en rojo no deben de estar vacios para poder guardar"
            render(view:'create',model:[postInstance:postInstance])
        }
    }
  def searchAJAX = {

        def res = Post.findAllByNamePostLike("%${params.query}%")

        //Create XML response
        render(contentType: "text/xml") {
	    results() {
	        res.each { re ->
		    result(){
		        name(re.namePost)
                        //Optional id which will be available in onItemSelect
                        id(re.id)
		    }
		}
            }
        }
    }
}
