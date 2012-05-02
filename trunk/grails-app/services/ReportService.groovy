import groovy.sql.Sql
class ReportService {

    boolean transactional = true
    def dataSource
   def reports()
  {
    def query="Select * from reports "
    def sql=new Sql(dataSource)
     def resultado=[]
    sql.eachRow(query){
       def report=new Expando()
      report.id_user=it.id_user
      report.name_user=it.name_user
      report.last_name=it.last_name
      report.name_company=it.name_company
      report.name_area=it.name_area
      report.name_test=it.name_test
      report.finalscore=it.finalscore
      report.enddate=it.enddate
        resultado.add(report)
    }
    return resultado
  }
   def reportsParams(String parametro,String value)
  {
    def query="Select * from reports where "+parametro+" like '%"+value+"%' "
    println query
    def sql=new Sql(dataSource)
     def resultado=[]
    sql.eachRow(query){
       def report=new Expando()
      report.id_user=it.id_user
      report.name_user=it.name_user
      report.last_name=it.last_name
      report.name_company=it.name_company
      report.name_area=it.name_area
      report.name_test=it.name_test
      report.finalscore=it.finalscore
      report.enddate=it.enddate
        resultado.add(report)
    }
    return resultado
  }

}
