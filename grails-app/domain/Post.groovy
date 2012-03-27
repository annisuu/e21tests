class Post {
  String namePost

    static constraints = {
    namePost(blank:false,nullable:false,size:5..20,matches:"[a-zA-Z\\u00D1\\u00F1\\u00E1\\u00E9\\u00ED\\u00F3\\u00FA\\u00C1\\u00C9\\u00CD\\u00D3\\u00DA\\u002E ]+")
    }

   static mapping={

    table 'post'
    version false
    columns{
      id column :'id_post'
      namePost column :'name_post'
    }
}
}
