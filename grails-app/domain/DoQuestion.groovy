class DoQuestion {
  String id_test
  String questiontext
  String answer1
  String image1
  String answer2
  String image2
  String answer3
  String image3
  String trueanswer
  String numberq
  
  static mapping={
     table 'do_question'
    version false
    columns{
      id column: 'id_question'
      id_test column: 'id_test'
      questiontext column: 'questiontext'
      answer1 column: 'answer1'
      image1 column: 'image1'
      answer2 column: 'answer2'
      image2 column: 'image2'
      answer3 column: 'answer3'
      image3 column: 'image3'
      trueanswer column: 'trueanswer'
      numberq column: 'numberq'

    }

  }

}
