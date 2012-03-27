

class CompanyController {
    
    def index = { redirect(action:create,params:params) }
    def ConsultaService

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ companyInstanceList: Company.list( params ), companyInstanceTotal: Company.count() ]
    }

    def show = {
        def companyInstance = Company.get( params.id )

        if(!companyInstance) {
            flash.message = "Company not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ companyInstance : companyInstance ] }
    }

    def delete = {
        def companyInstance = Company.get( params.id )
        if(companyInstance) {
            try {
                companyInstance.delete(flush:true)
                flash.message = "Company ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Company ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Company not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def companyInstance = Company.get( params.id )

        if(!companyInstance) {
            flash.message = "Company not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ companyInstance : companyInstance ]
        }
    }

    def update = {
        def companyInstance = Company.get( params.id )
        if(companyInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(companyInstance.version > version) {
                    
                    companyInstance.errors.rejectValue("version", "company.optimistic.locking.failure", "Another user has updated this Company while you were editing.")
                    render(view:'edit',model:[companyInstance:companyInstance])
                    return
                }
            }
            companyInstance.properties = params
            if(!companyInstance.hasErrors() && companyInstance.save()) {
                flash.message = "Company ${params.id} updated"
                redirect(action:show,id:companyInstance.id)
            }
            else {
                render(view:'edit',model:[companyInstance:companyInstance])
            }
        }
        else {
            flash.message = "Company not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def companyInstance = new Company()
        companyInstance.properties = params
        return ['companyInstance':companyInstance]
    }

    def save = {
        def companyInstance = new Company(params)
        if(!companyInstance.hasErrors() && companyInstance.save()) {
            flash.message = "Company ${companyInstance.id} created"
            redirect(action:show,id:companyInstance.id)
        }
        else {
            render(view:'create',model:[companyInstance:companyInstance])
        }
    }
  def searchAJAX = {
        def companys = Company.findAllByNameCompanyLike("%${params.query}%")

        //Create XML response
        render(contentType: "text/xml") {
	    results() {
	        companys.each { company ->
		    result(){
		        name(company.nameCompany)
                        //Optional id which will be available in onItemSelect
                        id(company.id)
		    }
		}
            }
        }
    }
}
