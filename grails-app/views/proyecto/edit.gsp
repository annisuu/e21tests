

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainAdmin" />
        <title>editar proyecto</title>

    </head>
    <body>
        <div class="nav">
          
            <span class="menuButton"><g:link class="list" action="list">lista de proyectos</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">nuevo proyecto</g:link></span>
        </div>
        <div class="body">
            <h1>editar proyecto</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${proyectoInstance}">
            <div class="errors">
                <g:renderErrors bean="${proyectoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${proyectoInstance?.id}" />
                <input type="hidden" name="version" value="${proyectoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameProyecto">Nombre de Proyecto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:proyectoInstance,field:'nameProyecto','errors')}">
                                    <input type="text" id="nameProyecto" name="nameProyecto" value="${fieldValue(bean:proyectoInstance,field:'nameProyecto')}"/>
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
