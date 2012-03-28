class Test {
String nameTest
  String idArea
  String idSubject
  static mapping={
    table 'test'
    version false
    columns{

      id column: 'id_test'
      nameTest column: 'name_test'
      idArea column: 'id_area'
      idSubject column: 'subject'
      
    }

  }
}
