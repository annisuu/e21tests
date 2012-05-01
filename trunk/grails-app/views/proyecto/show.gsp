

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <meta name="layout" content="mainAdmin" />
        <title>proyecto</title>

    </head>
    <body>
        <div class="nav">
      
            <span class="menuButton"><g:link class="list" action="list">lista de proyectos</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">nuevo proyecto</g:link></span>
        </div>
        <div class="body">
            <h1>proyecto</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:proyectoInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nombre de Proyecto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:proyectoInstance, field:'nameProyecto')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${proyectoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('¿Esta Seguro?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
