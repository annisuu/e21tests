

class DoQuestionController {
    
    def index = { redirect(action:list,params:params) }
     Properties prop = System.getProperties();
     def ConsultaService
      String appPath = System.getProperties().getProperty("user.dir");

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ doQuestionInstanceList: DoQuestion.list( params ), doQuestionInstanceTotal: DoQuestion.count() ]
    }

    def show = {
        def doQuestionInstance = DoQuestion.get( params.id )

        if(!doQuestionInstance) {
            flash.message = "DoQuestion not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ doQuestionInstance : doQuestionInstance ] }
    }

    def delete = {
        def doQuestionInstance = DoQuestion.get( params.id )
        if(doQuestionInstance) {
            try {
                doQuestionInstance.delete(flush:true)
                flash.message = "DoQuestion ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "DoQuestion ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "DoQuestion not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def doQuestionInstance = DoQuestion.get( params.id )

        if(!doQuestionInstance) {
            flash.message = "DoQuestion not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ doQuestionInstance : doQuestionInstance ]
        }
    }

    def update = {
        def doQuestionInstance = DoQuestion.get( params.id )
        if(doQuestionInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(doQuestionInstance.version > version) {
                    
                    doQuestionInstance.errors.rejectValue("version", "doQuestion.optimistic.locking.failure", "Another user has updated this DoQuestion while you were editing.")
                    render(view:'edit',model:[doQuestionInstance:doQuestionInstance])
                    return
                }
            }
            doQuestionInstance.properties = params
            if(!doQuestionInstance.hasErrors() && doQuestionInstance.save()) {
                flash.message = "DoQuestion ${params.id} updated"
                redirect(action:show,id:doQuestionInstance.id)
            }
            else {
                render(view:'edit',model:[doQuestionInstance:doQuestionInstance])
            }
        }
        else {
            flash.message = "DoQuestion not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
      def area=ConsultaService.buscaArea()
      def subject=ConsultaService.buscaSubject()

        def doQuestionInstance = new DoQuestion()
        doQuestionInstance.properties = params
     
        return ['doQuestionInstance':doQuestionInstance,area:area,subject:subject]
    }

    def save = {
      def area=ConsultaService.buscaArea()
      def subject=ConsultaService.buscaSubject()
      def testInstance =new Test();
      def doQuestionInstance = new DoQuestion(params)
      testInstance.idArea=params.idArea;
      testInstance.idSubject=params.idSubject;
      testInstance.nameTest=params.nameTest

      if(testInstance.save())
      {
        println ""+doQuestionInstance.questiontext
        def files = request.getFileMap()
      //imagen 1
        def file=files.get("image1")
        String fileName = file.getOriginalFilename()
        println "imagen1: "+fileName
        subirFile(file)
        doQuestionInstance.image1=fileName
      //Imagen 2
        def file2=files.get("image2")
        String fileName2 = file.getOriginalFilename()
        subirFile(file2)
        doQuestionInstance.image2=fileName2
        String fileName3 = file.getOriginalFilename()
      //Imagen 3
        def file3=files.get("image3")
        subirFile(file3)
        doQuestionInstance.image3=fileName3

        if(!doQuestionInstance.hasErrors() && doQuestionInstance.save()) {
          
            flash.message = "DoQuestion ${doQuestionInstance.id} created"
            redirect(action:show,id:doQuestionInstance.id)
        }
         else {
            render(view:'create',model:[doQuestionInstance:doQuestionInstance,testInstance:testInstance,area:area,subject:subject])
        }
      }
        else {
            render(view:'create',model:[doQuestionInstance:doQuestionInstance,testInstance:testInstance,area:area,subject:subject])
        }
    }
  public  subirFile(def up)
  {  println "subiedo... "

     def files = request.getFileMap()
     def file=up
     String fileName = file.getOriginalFilename()
    def savepath=appPath+"\\upload\\imagesQuestion\\";
    println savepath
    if(fileName!="")
    {


            byte[] data=file.getBytes()
            File dir=new File(savepath)//some path...
            if(!dir.exists()){
               dir.mkdirs()
            }

            File actualFile=new File(savepath, fileName)
            actualFile.withOutputStream {out ->
                   out.write data
            }
    }
    else
    {
      println "no hay archivo"
    }

  }
}
