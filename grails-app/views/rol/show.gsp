

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <meta name="layout" content="mainAdmin" />
        <title>Roles</title>

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Lista de Roles</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">Nuevo Rol</g:link></span>
        </div>
        <div class="body">
            <h1>Show Rol</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:rolInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nombre de  Rol:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:rolInstance, field:'nameRol')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${rolInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('�Esta Seguro');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
