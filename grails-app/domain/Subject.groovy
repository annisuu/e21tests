class Subject {
    String nameSubject
    String idArea

    static constraints = {
    }
  static mapping={
    table 'subject'
    version false
    columns{

      id column: 'id_subject'
      nameSubject column: 'name_subject'
      idArea column: 'id_area'
    }
  }
}
