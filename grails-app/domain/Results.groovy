class Results {
    String userid
    String idTest
    String finalscore
    Date enddate
    static mapping = {
    table 'results'
     version false
      columns{
        userid column: 'userid'
        idTest column: 'idTest'
        finalscore column: 'finalscore'
        enddate column: 'enddate'
      }
    }
}
