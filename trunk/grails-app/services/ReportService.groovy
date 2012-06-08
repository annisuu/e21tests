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
      report.name_post=it.name_post
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
      report.name_post=it.name_post
      report.id_test=it.id_test
      report.name_test=it.name_test
      report.finalscore=it.finalscore
      report.enddate=it.enddate
        resultado.add(report)
    }
    return resultado
  }

   def buscarExamen(String parametro)
  {
    def query="select * from do_question where id_test= "+parametro+" order by id_question "
    println query
    def sql=new Sql(dataSource)
     def resultado=[]
    sql.eachRow(query){
      def examen=new Expando()
      examen.id_question=it.id_question
      examen.questiontext=it.questiontext
      examen.answer1=it.answer1
      examen.answer2=it.answer2
      examen.answer3=it.answer3
      examen.trueanswer=it.trueanswer
      examen.numberq=it.numberq
      resultado.add(examen)
    }
    return resultado
  }
    def buscarRespuestas(String test,String user)
  {
    def query="select * from doanswer where idTest= "+test+" and userid="+user+" order by idquestion "
    println query
    def sql=new Sql(dataSource)
     def resultado=[]
    sql.eachRow(query){
      def result=new Expando()
      result.userid=it.userid
      result.idTest=it.idTest
      result.idquestion=it.idquestion
      result.answer=it.answer
      result.score=it.score
      
      resultado.add(result)
    }
    return resultado
  }

  def ScoreReport(String test,String user)
   {
     def query="select * from scores where idTest= "+test+" and userid= "+user+" "
     println query
     def sql=new Sql(dataSource)
      def resultado=[]
     sql.eachRow(query){
       def scores=new Expando()
       scores.idTest=it.idTest
       scores.numberq=it.numberq
       scores.questiontext=it.questiontext
       scores.trueanswer=it.trueanswer
       scores.answer=it.answer
       scores.score=it.score

       resultado.add(scores)
     }
     return resultado
   }
  
}
