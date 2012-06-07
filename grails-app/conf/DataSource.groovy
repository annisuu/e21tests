dataSource {
	pooled = true
	driverClassName = "org.hsqldb.jdbcDriver"
	username = "sa"
	password = ""
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			driverClassName = "com.mysql.jdbc.Driver"
          // se espicifica el nombre de la bd despues del puerto 3306 y se pone el user y pw que se tiene para la bd
                         
         //url = "jdbc:mysql://localhost:3306/odebrecht"
         url = "jdbc:mysql://localhost:3306/odebrecht"
         username = "root"
        password = "Odebrecht2012"
        //password = "1234"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:mem:testDb"
		}
	}
	production {
		dataSource {
	 driverClassName = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/odebrecht"
         username = "root"
        password = "Odebrecht2012"
        // password = "1234"
         

		}
	}
}