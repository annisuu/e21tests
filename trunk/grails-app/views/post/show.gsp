

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <meta name="layout" content="mainAdmin" />
        <title>cargo</title>

    </head>
    <body>
        <div class="nav">
           
            <span class="menuButton"><g:link class="list" action="list">lista de cargos</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">nuevo cargo</g:link></span>
        </div>
        <div class="body">
            <h1>cargo</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:postInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nombre de Cargo:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:postInstance, field:'namePost')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${postInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('�Esta Seguro?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
