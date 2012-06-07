

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>test</title>

    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="list" action="list">Lista de Test</g:link></span>
            
        </div>
        <div class="body">
            <h1>test</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                        <td valign="top" class="name">Id:</td>
                        <td valign="top" class="value">${fieldValue(bean:testInstance, field:'id')}</td>
                       </tr>

                        <tr class="prop">
                        <td valign="top" class="name">Nombre Test:</td>
                        <td valign="top" class="value">${fieldValue(bean:testInstance, field:'nameTest')}</td>
                        </tr>   

                         <tr class="prop">
                        <td valign="top" class="name">Tematica:</td>
                        <td>  <g:each var="subject" in="${subject}">
                        <%if("${testInstance.idSubject}"==subject.id.toString()){println subject.name}%>
                        </g:each></td>
                         </tr>


                                      

                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${testInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('¿Esta Seguro?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
