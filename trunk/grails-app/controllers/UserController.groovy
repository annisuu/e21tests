

class UserController {
    
    def index = { redirect(action:create,params:params) }
   def ConsultaService

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ userInstanceList: User.list( params ), userInstanceTotal: User.count() ]
    }

    def show = {
        def userInstance = User.get( params.id )

        if(!userInstance) {
            flash.message = "User not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ userInstance : userInstance ] }
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

    def edit = {
        def userInstance = User.get( params.id )

        if(!userInstance) {
            flash.message = "User not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ userInstance : userInstance ]
        }
    }

    def update = {
        def userInstance = User.get( params.id )
        if(userInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(userInstance.version > version) {
                    
                    userInstance.errors.rejectValue("version", "user.optimistic.locking.failure", "Another user has updated this User while you were editing.")
                    render(view:'edit',model:[userInstance:userInstance])
                    return
                }
            }
            userInstance.properties = params
            if(!userInstance.hasErrors() && userInstance.save()) {
                flash.message = "User ${params.id} updated"
                redirect(action:show,id:userInstance.id)
            }
            else {
                render(view:'edit',model:[userInstance:userInstance])
            }
        }
        else {
            flash.message = "User not found with id ${params.id}"
            redirect(action:list)
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
      println("compa�ias"+company.id_company)
      println(proyecto.id_project)
       println(proyecto.name_project)
        def userInstance = new User()
        userInstance.properties = params

        return ['userInstance':userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post]

    }

    def save = {
        def userInstance = new User(params)
        if(!userInstance.hasErrors() && userInstance.save()) {
            flash.message = "User ${userInstance.id} created"
            redirect(action:show,id:userInstance.id)
        }
        else {
           def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def area=ConsultaService.buscaArea()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()
            render(view:'create',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post])
        }
    }
}
