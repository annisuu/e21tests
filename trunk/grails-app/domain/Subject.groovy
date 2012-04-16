class Subject {
    String nameSubject
    String idArea

    static constraints = {
      nameSubject(blank:false,nullable:false,size:5..30,matches:"[a-zA-Z\\u00D1\\u00F1\\u00E1\\u00E9\\u00ED\\u00F3\\u00FA\\u00C1\\u00C9\\u00CD\\u00D3\\u00DA\\u002E ]+")
      idArea(blank:false,nullable:false)
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
