

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainAdmin" />
        <title>editar area</title>


    </head>
    <body>
        <div class="nav">
            
            <span class="menuButton"><g:link class="list" action="list">lista de areas</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">nueva area</g:link></span>
        </div>
        <div class="body">
            <h1>editar area</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${areaInstance}">
            <div class="errors">
                <g:renderErrors bean="${areaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${areaInstance?.id}" />
                <input type="hidden" name="version" value="${areaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameArea">Nombre de  Area:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:areaInstance,field:'nameArea','errors')}">
                                    <input type="text" id="nameArea" name="nameArea" value="${fieldValue(bean:areaInstance,field:'nameArea')}"/>
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
