class Company {
    String nameCompany
    static constraints = {
    }
  static mapping={

    table 'company'
    version false
    columns{
      id column :'id_company'
      nameCompany column :'name_company'
    }
}
}
