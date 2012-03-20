class Post {
  String namePost

    static constraints = {
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
