class Proyecto {
       String nameProyecto
    static constraints = {
    }
  static mapping={

    table 'project'
    version false
    columns{
      id column :'id_project'
      nameProyecto column :'name_project'
    }
  }
}
