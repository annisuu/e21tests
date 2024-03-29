

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
         <meta name="layout" content="mainAdmin" />
        <title>editar cargos</title>

    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="list" action="list">lista de cargos</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">nuevo cargo</g:link></span>
        </div>
        <div class="body">
            <h1>editar cargo</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${postInstance}">
            <div class="errors">
                <g:renderErrors bean="${postInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${postInstance?.id}" />
                <input type="hidden" name="version" value="${postInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="namePost">Nombre de Cargo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:postInstance,field:'namePost','errors')}">
                                    <input type="text" id="namePost" name="namePost" value="${fieldValue(bean:postInstance,field:'namePost')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('�Esta Seguro?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
