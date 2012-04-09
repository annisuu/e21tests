

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show User</title>

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
            <span class="menuButton"><g:link class="list" action="list">User List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New User</g:link></span>
        </div>
        <div class="body">
            <h1>Show User</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:userInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                          <td valign="top" class="name">Area:</td>
                          <td><g:each var="a" in="${area}">
                         <%if("${userInstance.idArea}"==a.id_area.toString()){println a.name_area}%>
                         </g:each></td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Company:</td>
                             <td> <g:each var="b" in="${company}">
                             <%if("${userInstance.idCompany}"==b.id_company.toString()){println b.name_company}%>
                             </g:each></td>
                        </tr>
                    
                        <tr class="prop">
                           <td valign="top" class="name">Puesto:</td>
                         <td> <g:each var="c" in="${post}">
                           <%if("${userInstance.idPost}"==c.id_post.toString()){println c.name_post}%>
                           </g:each></td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Proyecto:</td>
                             <td><g:each var="d" in="${proyecto}">
                             <%if("${userInstance.idProyecto}"==d.id_project.toString()){println d.name_project}%>
                            </g:each></td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Rol:</td>
                          <td><g:each var="e" in="${rol}">
                        <%if("${userInstance.idrol}"==e.id_rol.toString()){println e.name_rol}%>
                        </g:each></td>                                 
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Apellidos:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:userInstance, field:'lastName')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nombre:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:userInstance, field:'nameUser')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Clave:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:userInstance, field:'password')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${userInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
