

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
            <h1>Editar Rol</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${rolInstance}">
            <div class="errors">
                <g:renderErrors bean="${rolInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${rolInstance?.id}" />
                <input type="hidden" name="version" value="${rolInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameRol">Nombre de  Rol:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:rolInstance,field:'nameRol','errors')}">
                                    <input type="text" id="nameRol" name="nameRol" value="${fieldValue(bean:rolInstance,field:'nameRol')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('¿Esta Seguro?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
