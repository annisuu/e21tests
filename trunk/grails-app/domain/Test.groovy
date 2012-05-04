class Test {
String nameTest
  String idSubject


   static constraints = {
      nameTest(blank:false,nullable:false)

    }

  static mapping={
    table 'test'
    version false
    columns{

      id column: 'id_test'
      nameTest column: 'name_test'
      idSubject column: 'subject'
      
    }

  }
}
