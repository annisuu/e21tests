import groovy.sql.Sql
//importo clase sql al servicio par ahacer mis consultas
class ConsultaService {

    boolean transactional = true
    def dataSource           //declaor mi dataSource que buscara las consultas
  //creo un metodo para hacer la consulta
    def buscaProyecto() {
      //creo mi objeto sql para hacer la consulta
    def sql= new Sql(dataSource)
      //creo un arrgeglo para almacenar mis resultados
    def resultado =[]
      //hago la consulta la bd con el metod eachrow dentro del metodo pongo mi sentencia d ela consulta tal y como se delcaro en la bd
      sql.eachRow("Select id_project,name_project from project")//defino un objeto tipo expando pra crear variables dinamicas
      {def project=new Expando()       //creo mis varibales para almacenar los resultados de la busqueda
      project.id_project =it.id_project
      project.name_project= it.name_project
      resultado.add(project)    //almaceno mi objeto expando en el arreglo que se creo ""Resultado"

      }
      //regreso el valor dentro de mi arreglo
      return resultado
      //me voy al controlador en donde ocupare la busqueda en este caso User
    }

  def buscaCompany  (){
    def sql= new Sql(dataSource)
    def resultado=[]
    sql.eachRow("select id_company,name_company from company")  {
      def company=new Expando()
      company.id_company= it.id_company
      company.name_company=it.name_company
      resultado.add(company)
    }
    return resultado
  }
   def buscaArea(){

     def sql=new Sql(dataSource)
     def resultado=[]
     sql.eachRow("select id_area,name_area from area") {
       def area=new Expando()
       area.id_area=it.id_area
       area.name_area=it.name_area
       resultado.add(area)
     }
     return resultado
   }

  def buscaRol (){
    def sql=new Sql(dataSource)
    def resultado=[]
    sql.eachRow("select id_rol,name_rol from rol"){
      def rol=new Expando()
      rol.id_rol=it.id_rol
      rol.name_rol=it.name_rol
      resultado.add(rol)
    }
    return resultado
  }

  def buscaPost (){
    def sql= new Sql(dataSource)
    def resultado=[]
    sql.eachRow("select id_post,name_post from post") {

      def post =new Expando()
      post.id_post=it.id_post
      post.name_post=it.name_post
      resultado.add(post)
    }
    return resultado
  }
  def buscaSubject (){
    def sql= new Sql(dataSource)
    def resultado=[]
    sql.eachRow("select id_subject,name_subject from subject") {

      def subject =new Expando()
      subject.id=it.id_subject
      subject.name=it.name_subject
      resultado.add(subject)
    }
    return resultado
  }
  def users (String param){
    def sql= new Sql(dataSource)
    def resultado=[]
    sql.eachRow("select id_user,name_user from users where name_user like "+ param+ " ") {

      def u =new Expando()
      u.id=it.id_user
      u.name=it.name_user

      resultado.add(u)
    }
    return resultado
  }
  def findQuestion(String id){
     def sql= new Sql(dataSource)
    def resultado=[]
    sql.eachRow("select * from do_question where idq = "+ id + " ") {

      def u =new Expando()
      u.idq=it.idq
      u.question=it.questiontext
      u.idanswer=it.idanswer
      

      resultado.add(u)
    }
    return resultado

  }
  def findUserforLogin(String password){
      def sql= new Sql(dataSource)
   // def resultado=[]
     def u =new Expando()
    sql.eachRow("select * from login where password_user = '"+ password + "' ") {

      u.idu=it.id_user
      u.name_user=it.name_user
      u.last_name=it.last_name
      u.id_project=it.id_project
      u.name_project=it.name_project
      u.id_company=it.id_company
      u.name_company=it.name_company
      u.id_rol=it.id_rol
      u.name_rol=it.name_rol
      u.id_post=it.id_post
      u.name_post=it.name_post
      u.id_area=it.id_area
      u.name_area=it.name_area



    }
    return u
  }
  def findTematicas(int id){
    def sql= new Sql(dataSource)
    def resultado=[]

    sql.eachRow("select * from subject where id_area= "+ id +" ") {
      def tematica=new Expando()
      tematica.id_subject=it.id_subject
      tematica.name_subject=it.name_subject
      resultado.add(tematica)
    }

    return resultado
  }

  def findTests(){
      def sql= new Sql(dataSource)
      def resultado=[]

      sql.eachRow("select * from test ") {
        def examen=new Expando()
        examen.id_test=it.id_test
        examen.name_test=it.name_test
        examen.subject=it.subject
        resultado.add(examen)
      }

      return resultado
    }
  def startTest(def idt,def number){
    println "parametros de la busqueda -->"+idt+"---"+number
      def sql= new Sql(dataSource)
     def examen=new Expando()
      sql.eachRow("select * from stest where id_test= '"+idt+"' and numberq='"+number+"' ") {

        examen.id_test=it.id_test
        examen.id_area=it.id_area
        examen.subject=it.subject
        examen.numberq=it.numberq
        examen.id_question=it.id_question
        examen.questiontext=it.questiontext
        examen.answer1=it.answer1
        examen.image1=it.image1
        examen.answer2=it.answer2
        examen.image2=it.image2
        examen.answer3=it.answer3
        examen.image3=it.image3
        examen.trueanswer=it.trueanswer

      }

      return examen
    }
  def finalScore(def userid,def idTest)
  {
    def sql=new Sql(dataSource)
    def result =new  Expando()
    sql.eachRow("select sum(score) as score from doanswer where userid='"+userid+"' and idTest='"+idTest+"' "){
    result.score=it.score

    }
    return result
  }
   def findQuestion(def userid,def idq)
  {
    println "parametros::"+userid+"--"+idq
    def sql=new Sql(dataSource)
    def result =false
    sql.eachRow("select * from doanswer where userid='"+userid+"' and idquestion='"+idq+"' "){
      result=true;
    }
    return result
  }
   def findTestDone(def userid)
  {
    println "parametros::"+userid+"--"
    def sql=new Sql(dataSource)
     def resultado=[]
    sql.eachRow("select * from results where userid='"+userid+"'  "){
       def done=new Expando()
        done.idTest=it.idTest
        resultado.add(done)
    }
    return resultado
  }


  def findSubjectByArea(String idSubject){
    def sql= new Sql(dataSource)
    def resultado=[]
    println "select * from subject where id_area= "+ idSubject +" "
    sql.eachRow("select * from subject where id_area= "+ idSubject +" ") {
      def tematica=new Expando()
      tematica.id_subject=it.id_subject
      tematica.name_subject=it.name_subject
      resultado.add(tematica)
    }

    return resultado
  }

  def comparaPass(String password) {
      def sql= new Sql(dataSource)
      def resultado=false
      sql.eachRow("Select password_user from users where password_user  ="+password+" ")

     {
      resultado =true
   }

        return resultado
      }

}
