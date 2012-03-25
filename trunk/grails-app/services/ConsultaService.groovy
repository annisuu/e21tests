import groovy.sql.Sql
//importo clase sql al servicio par ahacer mis consultas
class ConsultaService {

    boolean transactional = true
  //declaor mi dataSource que buscara las consultas
    def dataSource
   //creo un metodo para hacer la consulta
    def buscaProyecto() {
      //creo mi objeto sql para hacer la consulta
      def sql= new Sql(dataSource)
      //creo un arrgeglo para almacenar mis resultados
       def resultado =[]
      //hago la consulta la bd con el metod eachrow dentro del metodo pongo mi sentencia d ela consulta tal y como se delcaro en la bd
      sql.eachRow("Select id_project,name_project from project"){
      //defino un objeto tipo expando pra crear variables dinamicas
      def project=new Expando()
      //creo mis varibales para almacenar los resultados de la busqueda
      project.id_project =it.id_project
      project.name_project= it.name_project
      //almaceno mi objeto expando en el arreglo que se creo ""Resultado"
      resultado.add(project)
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

}
