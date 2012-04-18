class Area {
  String nameArea

    static constraints = {
      nameArea(blank:false,nullable:false,matches:"[A-Z\\u00D1\\u00F1\\u00E1\\u00E9\\u00ED\\u00F3\\u00FA\\u00C1\\u00C9\\u00CD\\u00D3\\u00DA\\u002E ]+")

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