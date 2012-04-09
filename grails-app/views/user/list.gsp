

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>User List</title>

      <g:if test="${session.user}">
        Usuario: <b>${session.user?.name_user}&nbsp;${session.user?.last_name}</b>
         <p> Projecto:<b>${session.user?.name_project}</b> </p>
         <p> Rol:<b>${session.user?.name_rol}</b> </p>

         <g:link controller="login" action="logout">Logout</g:link>
      </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New User</g:link></span>
        </div>
        <div class="body">
            <h1>User List</h1>
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

                   	        <g:sortableColumn property="idArea" title="Area"/>

                   	        <g:sortableColumn property="idCompany" title="Compania"/>

                            <g:sortableColumn property="idPost" title="Puesto"/>

                   	        <g:sortableColumn property="idProyecto" title="Proyecto"/>

                   	        <g:sortableColumn property="idrol" title="Rol"/>


                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                         <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean:userInstance, field:'id')}</g:link></td>

                             <td>${fieldValue(bean:userInstance, field:'nameUser')}</td>

                             <td>${fieldValue(bean:userInstance, field:'lastName')}</td>

                                <td><g:each var="a" in="${area}">
                                <%if("${userInstance.idArea}"==a.id_area.toString()){println a.name_area}%>
                                </g:each></td>



                                <td><!--${fieldValue(bean:userInstance, field:'idCompany')} -->
                                <g:each var="b" in="${company}">
                                <%if("${userInstance.idCompany}"==b.id_company.toString()){println b.name_company}%>
                                </g:each></td>

                                <td><!--${fieldValue(bean:userInstance, field:'idPost')} -->
                                <g:each var="c" in="${post}">
                                <%if("${userInstance.idPost}"==c.id_post.toString()){println c.name_post}%>
                                </g:each></td>



                                <td><!--${fieldValue(bean:userInstance, field:'idProyecto')} -->
                                <g:each var="d" in="${proyecto}">
                                <%if("${userInstance.idProyecto}"==d.id_project.toString()){println d.name_project}%>
                                </g:each></td>



                                <td><!--${fieldValue(bean:userInstance, field:'idrol')} -->
                                <g:each var="e" in="${rol}">
                                <%if("${userInstance.idrol}"==e.id_rol.toString()){println e.name_rol}%>
                                </g:each></td>


                        </tr>
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
