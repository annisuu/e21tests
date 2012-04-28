

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>tematica</title>

     
    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="list" action="list">Lista de Tematicas</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">Nueva Tematica</g:link></span>
        </div>
        <div class="body">
            <h1>tematica</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:subjectInstance, field:'id')}</td>
                            
                        </tr>

                   <tr class="prop">
                   <td valign="top" class="name">Nombre de Tematica:</td>
                   <td valign="top" class="value">${fieldValue(bean:subjectInstance, field:'nameSubject')}</td>
                   </tr> 

                        <tr class="prop">
                       <td valign="top" class="name">Area:</td>
                       <td><g:each var="a" in="${area}">
                        <%if("${subjectInstance.idArea}"==a.id_area.toString()){println a.name_area}%>
                       </g:each></td>
                        </tr>
                    

                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${subjectInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('�Esta Seguro?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
