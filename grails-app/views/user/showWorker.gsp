
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
         <meta name="layout" content="mainInstruc" />
        <title>trabajador</title>

    </head>
    <body>
       <div class="nav">
             <% if(session.user?.id_rol==1)
        {%>
            <span class="menuButton"><g:link class="home" controller="proyecto" action="create">Regresar como administrador</g:link></span>
        <%}%>

            <span class="menuButton"><g:link class="list" action="listWorker">lista de trabajadores</g:link></span>
            <span class="menuButton"><g:link class="create" action="createWorker">nuevo trabajador</g:link></span>
        </div>
    
        <div class="body">
            <h1>rabajador</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
        <g:form  method="post" >
                        
            <div class="dialog">
                <table>
                    <tbody>


                        <tr class="prop">
                        <td valign="top" class="name">Id:</td>
                        <td valign="top" class="value">${fieldValue(bean:userInstance, field:'id')}</td>
                        </tr>

                        <tr class="prop">
                        <td valign="top" class="name">Nombre:</td>
                        <td valign="top" class="value">${fieldValue(bean:userInstance, field:'nameUser')}</td>
                        </tr>


                        <tr class="prop">
                        <td valign="top" class="name">Apellidos:</td>
                        <td valign="top" class="value">${fieldValue(bean:userInstance, field:'lastName')}</td>
                        </tr>

                        <tr class="prop">
                        <td valign="top" class="name">Clave:</td>
                        <td valign="top" class="value">${fieldValue(bean:userInstance, field:'password')}</td>
                        </tr>

                        <tr class="prop">
                        <td valign="top" class="name">Proyecto:</td>
                        <td><g:each var="d" in="${proyecto}">
                        <%if("${userInstance.idProyecto}"==d.id_project.toString()){println d.name_project}%>
                        </g:each></td>
                        </tr>

                        <tr class="prop">
                        <td valign="top" class="name">Empresa:</td>
                        <td> <g:each var="b" in="${company}">
                        <%if("${userInstance.idCompany}"==b.id_company.toString()){println b.name_company}%>
                        </g:each></td>
                        </tr>

                        <tr class="prop">
                        <td valign="top" class="name">Area:</td>
                        <td><g:each var="a" in="${area}">
                        <%if("${userInstance.idArea}"==a.id_area.toString()){println a.name_area}%>
                        </g:each></td>
                        </tr>


                        <tr class="prop">
                        <td valign="top" class="name">Cargo:</td>
                        <td> <g:each var="c" in="${post}">
                        <%if("${userInstance.idPost}"==c.id_post.toString()){println c.name_post}%>
                        </g:each></td>
                        </tr>


                        <tr class="prop">
                        <td valign="top" class="name">Rol:</td>
                        <td><g:each var="e" in="${rol}">
                        <%if("${userInstance.idrol}"==e.id_rol.toString()){println e.name_rol}%>
                        </g:each></td>
                        </tr>

                    </tbody>

                </table>
            </div>
            <div class="buttons">

                    <input type="hidden" name="id" value="${userInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="EditWorker" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('¿Esta Seguro?');" value="DeleteWorker" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
