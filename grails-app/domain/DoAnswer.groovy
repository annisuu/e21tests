class DoAnswer {
    String userid
    String idTest
    String idquestion
    String answer
    String score
    static mapping = {
    table 'doanswer'
     version false
      columns{
        userid column: 'userid'
        idTest column: 'idTest'
        idquestion column: 'idquestion'
        answer column:'answer'
        score column: 'score'
      }
    }
}
