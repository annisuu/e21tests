class User {
      String nameUser
      String lastName
      String password
      String idProyecto
      String idCompany
      String idrol
      String idPost
      String idArea


    static constraints = {
      nameUser(blank:false,nullable:false,matches:"[a-zA-Z\\u00D1\\u00F1\\u00E1\\u00E9\\u00ED\\u00F3\\u00FA\\u00C1\\u00C9\\u00CD\\u00D3\\u00DA\\u002E ]+")
      lastName(blank:false,nullable:false,matches:"[a-zA-Z\\u00D1\\u00F1\\u00E1\\u00E9\\u00ED\\u00F3\\u00FA\\u00C1\\u00C9\\u00CD\\u00D3\\u00DA\\u002E ]+")
      password(blank:false,nullable:false, size:3..10)
    }
  static mapping={

    table 'users'
    version false
    columns{
      id column :'id_user'
      nameUser column :'name_user'
      lastName column :'last_name'
      password column :'password_user'

      idProyecto column :'id_project'
      idCompany  column :'id_company'
      idrol   column :'id_rol'
      idPost  column :'id_post'
      idArea  column :'id_area'

      
    }
  }
}
