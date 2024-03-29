

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <meta name="layout" content="mainAdmin" />
        <title>editar empresa</title>

    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="list" action="list">lista de empresas</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">nueva empresa</g:link></span>
        </div>
        <div class="body">
            <h1>editar empresa</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${companyInstance}">
            <div class="errors">
                <g:renderErrors bean="${companyInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${companyInstance?.id}" />
                <input type="hidden" name="version" value="${companyInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameCompany">Nombre de Empresa:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:companyInstance,field:'nameCompany','errors')}">
                                    <input type="text" id="nameCompany" name="nameCompany" value="${fieldValue(bean:companyInstance,field:'nameCompany')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('�Esta seguro?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
