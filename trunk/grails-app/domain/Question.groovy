class Question {
    String id_test
    String question
    static constraints = {
    }
  static mapping={
     table 'question'
    version false
    columns{
      id column: 'id_question'
      id_test column: 'id_test'
      question column: 'question'
    }
  }
}
