class Answer {
    String id_question
    String answer
    String image
    String tf
    static constraints = {
    }
  static mapping={
     table 'answer'
    version false
    columns{
      id column: 'id_answer'
      id_question column: 'id_question'
      answer column: 'answer'
      image column: 'file_image'
      tf column: 'true_false'
    }
  }
}
