class DoQuestion {
  String id_test
  String questiontext
  String answer1
  String image1
  String tf1
  String answer2
  String image2
  String tf2
  String answer3
  String image3
  String tf3
  static constraints={
    id_test(blank:false,nullable:false)
    questiontext(blank:false,nullable:false)
    answer1(blank:false,nullable:false)
    image1(blank:false,nullable:false)
    tf1(blank:false,nullable:false)
    answer2(blank:false,nullable:false)
    image2(blank:false,nullable:false)
    tf2(blank:false,nullable:false)
    answer3(blank:false,nullable:false)
    image3(blank:false,nullable:false)
    tf3(blank:false,nullable:false)



  }
  static mapping={
     table 'do_question'
    version false
    columns{
      id column: 'id_question'
      id_test column: 'id_test'
      questiontext column: 'questiontext'
      answer1 column: 'answer1'
      image1 column: 'image1'
      tf1 column: 'tf1'
      answer2 column: 'answer2'
      image2 column: 'image2'
      tf2 column: 'tf2'
      answer3 column: 'answer3'
      image3 column: 'image3'
      tf3 column: 'tf3'

    }

  }

}
