

class UserController {
    
    def index = { redirect(action:create,params:params) }
   def ConsultaService

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {

       def area=ConsultaService.buscaArea()
       def company=ConsultaService.buscaCompany()
      def post=ConsultaService.buscaPost()
      def proyecto=ConsultaService.buscaProyecto()
      def rol=ConsultaService.buscaRol()
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ userInstanceList: User.list( params ), userInstanceTotal: User.count() ,area:area,company:company,post:post,proyecto:proyecto,rol:rol]
    }
 def listWorker = {

        def area=ConsultaService.buscaArea()
        def company=ConsultaService.buscaCompany()
        def post=ConsultaService.buscaPost()
        def proyecto=ConsultaService.buscaProyecto()
        def rol=ConsultaService.buscaRol()
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ userInstanceList: User.list( params ), userInstanceTotal: User.count() ,area:area,company:company,post:post,proyecto:proyecto,rol:rol]
    }
    def show = {

     def area=ConsultaService.buscaArea()
      def company=ConsultaService.buscaCompany()
      def post=ConsultaService.buscaPost()
      def proyecto=ConsultaService.buscaProyecto()
      def rol=ConsultaService.buscaRol()
        def userInstance = User.get( params.id )

        if(!userInstance) {
            flash.message = "User not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ userInstance : userInstance ,area:area,company:company,post:post,proyecto:proyecto,rol:rol] }
    }


  def showWorker = {

      def area=ConsultaService.buscaArea()
       def company=ConsultaService.buscaCompany()
       def post=ConsultaService.buscaPost()
       def proyecto=ConsultaService.buscaProyecto()
       def rol=ConsultaService.buscaRol()
         def userInstance = User.get( params.id )

         if(!userInstance) {
             flash.message = "User not found with id ${params.id}"
             redirect(action:listWorker)
         }
         else { return [ userInstance : userInstance ,area:area,company:company,post:post,proyecto:proyecto,rol:rol] }
     }

    def delete = {
        def userInstance = User.get( params.id )
        if(userInstance) {
            try {
                userInstance.delete(flush:true)
                flash.message = "User ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "User ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        
        else {
            flash.message = "User not found with id ${params.id}"
            redirect(action:list)
        }
    }



    def deleteWorker = {
        def userInstance = User.get( params.id )
        if(userInstance) {
            try {
                userInstance.delete(flush:true)
                flash.message = "User ${params.id} deleted"
                redirect(action:listWorker)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "User ${params.id} could not be deleted"
                redirect(action:showWorker,id:params.id)
            }
        }
        else {
            flash.message = "User not found with id ${params.id}"
            redirect(action:listWorker)
        }
    }

    def edit = {
       def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def area=ConsultaService.buscaArea()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()

        def userInstance = User.get( params.id )
       
        if(!userInstance) {
            flash.message = "User not found with id ${params.id}"
            redirect(action:listWorker,proyecto:proyecto,company:company,rol:rol,post:post,area:area)
        }
        else {

            return [ userInstance : userInstance,proyecto:proyecto,company:company,rol:rol,post:post,area:area ]
        }
    }

 def editWorker = {
      def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def area=ConsultaService.buscaArea()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()

        def userInstance = User.get( params.id )

        if(!userInstance) {
            flash.message = "User not found with id ${params.id}"
            redirect(action:listWorker,area:area)
        }
        else {

            return [ userInstance : userInstance,proyecto:proyecto,company:company,rol:rol,post:post,area:area ]
        }
    }
  
    def update = {
      def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def area=ConsultaService.buscaArea()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()
        def userInstance = User.get( params.id )
        if(userInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(userInstance.version > version) {
                    
                    userInstance.errors.rejectValue("version", "user.optimistic.locking.failure", "Another user has updated this User while you were editing.")
                    render(view:'edit',model:[userInstance:userInstance],proyecto:proyecto,company:company,rol:rol,post:post,area:area)
                    return
                }
            }
            userInstance.properties = params
            if(!userInstance.hasErrors() && userInstance.save()) {
                flash.message = "User ${params.id} updated"
                redirect(action:show,id:userInstance.id)
            }
            else {
                render(view:'edit',model:[userInstance:userInstance],proyecto:proyecto,company:company,rol:rol,post:post,area:area)
            }
        }
        else {
            flash.message = "User not found with id ${params.id}"
            redirect(action:list)
        }
    }

   def updateWorker = {
     def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def area=ConsultaService.buscaArea()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()
        def userInstance = User.get( params.id )
        if(userInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(userInstance.version > version) {

                    userInstance.errors.rejectValue("version", "user.optimistic.locking.failure", "Another user has updated this User while you were editing.")
                    render(view:'editWorker',model:[userInstance:userInstance],proyecto:proyecto,company:company,rol:rol,post:post,area:area)
                    return
                }
            }
            userInstance.properties = params
            if(!userInstance.hasErrors() && userInstance.save()) {
                flash.message = "User ${params.id} updated"
                redirect(action:showWorker,id:userInstance.id)
            }
            else {
                render(view:'editWorker',model:[userInstance:userInstance],proyecto:proyecto,company:company,rol:rol,post:post,area:area)
            }
        }
        else {
            flash.message = "User not found with id ${params.id}"
            redirect(action:listWorker)
        }
    }
  

    def create = {
      //creo mis cariables que haran consulta mediant elos metod2

      def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def area=ConsultaService.buscaArea()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()
      println("puesto"+ post.name_post)
      println("rol"+rol.name_rol)
      println("area"+ area.name_area)
      println("compañias"+company.id_company)
      println(proyecto.id_project)
       println(proyecto.name_project)
        def userInstance = new User()
        userInstance.properties = params

        return ['userInstance':userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post]

    }
  def createWorker = {
      //creo mis cariables que haran consulta mediant elos metod2

      def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def area=ConsultaService.buscaArea()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()
      println("puesto"+ post.name_post)
      println("rol"+rol.name_rol)
      println("area"+ area.name_area)
      println("compañias"+company.id_company)
      println(proyecto.id_project)
     println(proyecto.name_project)
      def userInstance = new User()
      userInstance.properties = params

        return ['userInstance':userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post]

    }

    def save = {
           def proyecto=ConsultaService.buscaProyecto()
           def company=ConsultaService.buscaCompany()
           def area=ConsultaService.buscaArea()
           def rol=ConsultaService.buscaRol()
           def post=ConsultaService.buscaPost()
      
        def userInstance = new User(params)
      if(userInstance.idArea!="" && userInstance.idCompany!="" && userInstance.idPost!="" && userInstance.idProyecto!="")
      {
        if(!userInstance.hasErrors() && userInstance.save()) {
            flash.message = "User ${userInstance.id} created"
            redirect(action:show,id:userInstance.id)
        }
        else {


           flash.message =  "Los campos marcados en rojo no deben de estar vacios para poder guardar"
            render(view:'create',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post])
        }
      }
      else
      {
        flash.message =  "Dej&oacute; alg&uacute;n combo sin seleccionar"
                   render(view:'create',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post])
              
      }
    }

  def saveWorker = {
        def userInstance = new User(params)
      def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def area=ConsultaService.buscaArea()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()
     if(userInstance.idArea!="" && userInstance.idCompany!="" && userInstance.idPost!="" && userInstance.idProyecto!="")
      {
        if(!userInstance.hasErrors() && userInstance.save()) {
            flash.message = "User ${userInstance.id} created"
            redirect(action:showWorker,id:userInstance.id)
        }
        else {
          println "area: "+userInstance.idArea

           flash.message =  "Los campos marcados en rojo no deben de estar vacios para poder guardar"
            render(view:'createWorker',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post])
        }
      }
    else
     {            println "area: "+userInstance.idArea

       flash.message =  "Dej&oacute; alg&uacute;n combo sin seleccionar"
                         render(view:'createWorker',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post])

     }
    }

  def searchAJAX = {
    println "xxxxx"
        def users = User.findAllByNameUserLike("%${params.query}%")

        //Create XML response
        render(contentType: "text/xml") {
	    results() {
	        users.each { user ->
		    result(){
		        name(user.nameUser)
                        //Optional id which will be available in onItemSelect
                        id(user.id)
		    }
		}
            }
        }
    }
}
