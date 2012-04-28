

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <meta name="layout" content="mainAdmin" />
        <title>lista de usuarios</title>
      <r:require module="export"/>
      <link rel="stylesheet" href="${resource(dir:'css',file:'export.css')}" />


    </head>
    <body>
    
        <div class="nav">

            <span class="menuButton"><g:link class="create" action="create">Nuevo Usuario</g:link></span>
        </div>
        <div class="body">
            <h1>lista de usuario</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                   	        <g:sortableColumn property="id" title="Id"/>
                            <g:sortableColumn property="name_user" title="Nombre"/>
                   	        <g:sortableColumn property="last_name" title="Apellido"/>
                   	        <g:sortableColumn property="idProyecto" title="Proyecto"/>
                   	        <g:sortableColumn property="idCompany" title="Empresa"/>
                            <g:sortableColumn property="idArea" title="Area"/>
                            <g:sortableColumn property="idPost" title="Cargo"/>
                   	        <g:sortableColumn property="idrol" title="Rol"/>
                        </tr>

                    </thead>

                    <tbody>
                         <g:each in="${userInstanceList}" status="i" var="userInstance">
                      <tr>
                         <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean:userInstance, field:'id')}</g:link></td>

                         <td>${fieldValue(bean:userInstance, field:'nameUser')}</td>

                         <td>${fieldValue(bean:userInstance, field:'lastName')}</td>



                         <td><!--${fieldValue(bean:userInstance, field:'idProyecto')} -->
                         <g:each var="d" in="${proyecto}">
                         <%if("${userInstance.idProyecto}"==d.id_project.toString()){println d.name_project}%>
                         </g:each></td>


                         <td><!--${fieldValue(bean:userInstance, field:'idCompany')} -->
                         <g:each var="b" in="${company}">
                         <%if("${userInstance.idCompany}"==b.id_company.toString()){println b.name_company}%>
                         </g:each></td>

                          <td><!--${fieldValue(bean:userInstance, field:'idArea')} -->
                         <g:each var="a" in="${area}">
                         <%if("${userInstance.idArea}"==a.id_area.toString()){println a.name_area}%>
                         </g:each></td> 

                         <td><!--${fieldValue(bean:userInstance, field:'idPost')} -->
                         <g:each var="c" in="${post}">
                         <%if("${userInstance.idPost}"==c.id_post.toString()){println c.name_post}%>
                         </g:each></td>

                         <td><!--${fieldValue(bean:userInstance, field:'idrol')} -->
                         <g:each var="e" in="${rol}">
                         <%if("${userInstance.idrol}"==e.id_rol.toString()){println e.name_rol}%>
                         </g:each></td>


                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${userInstanceTotal}" />
            </div>

        </div>
    </body>
</html>
