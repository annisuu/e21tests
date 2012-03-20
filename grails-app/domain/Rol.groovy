class Rol {
  String nameRol

    static constraints = {
    }
   static mapping={

    table 'rol'
    version false
    columns{
      id column :'id_rol'
      nameRol column :'name_rol'
    }
}
}