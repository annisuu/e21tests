class Area {
  String nameArea

    static constraints = {
    }
   static mapping={

    table 'area'
    version false
    columns{
      id column :'id_area'
      nameArea column :'name_area'
    }
}
}