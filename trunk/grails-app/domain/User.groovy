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
