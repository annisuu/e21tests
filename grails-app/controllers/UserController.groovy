import org.codehaus.groovy.grails.commons.ConfigurationHolder

class UserController {

    def index = { redirect(action:create,params:params) }
   def ConsultaService
  def ReportService
  def exportService


    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {

       def area=ConsultaService.buscaArea()
       def company=ConsultaService.buscaCompany()
      def post=ConsultaService.buscaPost()
      def proyecto=ConsultaService.buscaProyecto()
      def rol=ConsultaService.buscaRol()
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
      if(params?.format && params.format != "html"){
			response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=Report_User.${params.extension}")

                        /* Formatter closure in previous releases
			def upperCase = { value ->
				return value.toUpperCase()
			}
			*/

                        // Formatter closure
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}

			Map formatters = [author: upperCase]
			Map parameters = [title: "Reporte de Usuarios"]

			exportService.export(params.format, response.outputStream, User.list(params), formatters, parameters)
		}
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
            flash.message = "TRABAJADOR NO ENCONTRADO ${params.id}"
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
             flash.message = "TRABAJADOR NO ENCONTRADO ${params.id}"
             redirect(action:listWorker)
         }
         else { return [ userInstance : userInstance ,area:area,company:company,post:post,proyecto:proyecto,rol:rol] }
     }

    def delete = {
        def userInstance = User.get( params.id )
        if(userInstance) {
            try {
                userInstance.delete(flush:true)
                flash.message = "TRABAJADOR  ${params.id} ELIMINADO"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "TRABAJADOR ${params.id}NO PUDO SER ELIMINADO"
                redirect(action:show,id:params.id)
            }
        }

        else {
            flash.message = "TRABAJADOR NO ENCONTRADO ${params.id}"
            redirect(action:list)
        }
    }



    def deleteWorker = {
        def userInstance = User.get( params.id )
        if(userInstance) {
            try {
                userInstance.delete(flush:true)
                flash.message = "TRABAJADOR ${params.id} ELIMINADO"
                redirect(action:listWorker)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "TRABAJADOR ${params.id} NO PUDO SER ELIMINADO"
                redirect(action:showWorker,id:params.id)
            }
        }
        else {
            flash.message = "TRABAJADOR NO ENCONTRADO${params.id}"
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
            flash.message = "TRABAJADOR NO ENCONTRADO ${params.id}"
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
            flash.message = "TRABAJADOR NO ENCONTRADO ${params.id}"
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
                flash.message = "TRABAJADOR ${params.id} ACTUALIZADO"
                redirect(action:show,id:userInstance.id)
            }
            else {
                render(view:'edit',model:[userInstance:userInstance],proyecto:proyecto,company:company,rol:rol,post:post,area:area)
            }
        }
        else {
            flash.message = "TRABAJADOR NO ENCONTRADO ${params.id}"
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
                flash.message = "TRABAJADOR ${params.id} ACTUALIZADO"
                redirect(action:showWorker,id:userInstance.id)
            }
            else {
                render(view:'editWorker',model:[userInstance:userInstance],proyecto:proyecto,company:company,rol:rol,post:post,area:area)
            }
        }
        else {
            flash.message = "TRABAJADOR NO ENCONTRADO ${params.id}"
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
      def users=ConsultaService.comparaPass(params.password)
      println users
      def proyecto=ConsultaService.buscaProyecto()
      def company=ConsultaService.buscaCompany()
      def rol=ConsultaService.buscaRol()
      def post=ConsultaService.buscaPost()
      def area=ConsultaService.buscaArea()

        def userInstance = new User(params)

      if(userInstance.idArea!="" && userInstance.idCompany!="" && userInstance.idPost!="" && userInstance.idProyecto!="")
      {
        if(!users)
      {
        if(!userInstance.hasErrors() && userInstance.save()) {
            flash.message = "TRABAJADOR  ${userInstance.id} AGREGADO"
            redirect(action:show,id:userInstance.id)
        }
        else {

           flash.message =  "LOS CAMPOS MARCADOS EN ROJO NO DEBEN DE ESTAR VACIOS PARA PODER GUARDAR"
            render(view:'create',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post,users:users])
        }
      }else
      {
        flash.message =  "YA EXISTE UN TRABAJADOR CON ESA CLAVE, POR FAVOR INGRESA OTRA"
                         render(view:'create',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post,users:users])

      }
      }
      else
      {
        flash.message =  "DEJ&Oacute; ALG&Uacute;N COMBO SIN SELECCIONAR"
                   render(view:'create',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post,users:users])

      }
    }

  def saveWorker = {
       def users=ConsultaService.comparaPass(params.password)
       println users
       def proyecto=ConsultaService.buscaProyecto()
       def company=ConsultaService.buscaCompany()
       def rol=ConsultaService.buscaRol()
       def post=ConsultaService.buscaPost()
       def area=ConsultaService.buscaArea()

         def userInstance = new User(params)

       if(userInstance.idArea!="" && userInstance.idCompany!="" && userInstance.idPost!="" && userInstance.idProyecto!="")
       {
         if(!users)
       {
         if(!userInstance.hasErrors() && userInstance.save()) {
             flash.message = "TRABAJADOR  ${userInstance.id} AGREGADO"
             redirect(action:showWorker,id:userInstance.id)
         }
         else {


            flash.message =  "LOS CAMPOS MARCADOS EN ROJO NO DEBEN DE ESTAR VACIOS PARA PODER GUARDAR"
             render(view:'createWorker',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post,users:users])
         }
       }else
       {
         flash.message =  "YA EXISTE UN USUARIO CON ESA CLAVE,POR FAVOR INGRESE OTRA"
                          render(view:'createWorker',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post,users:users])

       }
       }
       else
       {
         flash.message =  "DEJ&Oacute; ALG&Nacute;N COMBO SIN SELECCIONAR"
                    render(view:'createWorker',model:[userInstance:userInstance,proyecto:proyecto,company:company,area:area,rol:rol,post:post,users:users])

       }
     }





  def report={
    // def reports=ReportService.reports()

    render(view:'report')
  }
   def reportWorker={
    // def reports=ReportService.reports()
    render(view:'reportWorker')
  }
  def findReports={     def reports=ReportService.reportsParams(params.parametro,params.value)
    render(view:'report',model:[reports:reports,value:params.value,parametro:params.parametro])

  }
   def findReportsw={     def reports=ReportService.reportsParams(params.parametro,params.value)
    render(view:'reportWorker',model:[reports:reports,value:params.value,parametro:params.parametro])

  }

  def generaReport={
    println params?.format
    def reports=ReportService.reportsParams(params.parametro,params.value)
     if(params?.format && params.format != "html"){
			response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=ReportedeUsuario.${params.extension}")
List fields = ["name_user", "last_name","name_company","name_area","name_test","finalscore","enddate"]
			Map labels = ["name_user": "Nombre del Trabajador", "last_name": "Apellido","name_company":"Compa\u00F1\u00EDa","name_area":"Area","name_test":"Nombre del Test","finalscore":"Resultado","enddate":"Fecha de finalizaci\u00F3n"]

             /* Formatter closure in previous releases
			def upperCase = { value ->
				return value.toUpperCase()
			}
			*/

                        // Formatter closure
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}

			Map formatters = [author: upperCase]
			Map parameters = [title: "ETILENO XXI: Reporte de Usuarios", "title.font.style":"bold","column.widths": [0.5, 0.5, 0.5,0.5, 0.5, 0.5,1.0]]

			exportService.export(params.format, response.outputStream, reports, fields, labels, formatters, parameters)
		}

  }
   def scoreR={
    println params?.format
    def reports=ReportService.ScoreReport(params.test,params.user)
     if(params?.format && params.format != "html"){
			response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=CalificacionesUsuario${params.user}.${params.extension}")
List fields = ["numberq","questiontext", "trueanswer","answer","score"]
			Map labels = ["numberq": "N.","questiontext":"Pregunta", "trueanswer": "Respuesta correcta","answer":"Respuesta del Usuario","score":"Calificaci\u00F3n"]

             /* Formatter closure in previous releases
			def upperCase = { value ->
				return value.toUpperCase()
			}
			*/

                        // Formatter closure
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}

			Map formatters = [author: upperCase]
			Map parameters = [title: "ETILENO XXI - Test:${params.nameT}, Nombre del Trabajador: ${params.nameU} ", "title.font.style":"bold","column.widths": [0.5, 2, 0.5,0.5, 0.5]]

			exportService.export(params.format, response.outputStream, reports, fields, labels, formatters, parameters)
		}

  }

  def searchAJAX = {
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
  def viewTest={
     def examen=ReportService.buscarExamen(params.idT)
    def resultados=ReportService.buscarRespuestas(params.idT,params.idu)
    println examen
    println resultados
      render(view:'viewTest', model:[examen:examen,resultados:resultados,nameTest:params.nameTest,nameUser:params.user])
  }

  def viewTestA={
     def examen=ReportService.buscarExamen(params.idT)
    def resultados=ReportService.buscarRespuestas(params.idT,params.idu)
    println examen
    println resultados
      render(view:'viewTestA', model:[examen:examen,resultados:resultados,nameTest:params.nameTest,nameUser:params.user])
  }
}
