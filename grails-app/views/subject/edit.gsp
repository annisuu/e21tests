

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>editar tematica</title>

    </head>
    <body>
        <div class="nav">
               <% if(session.user?.id_rol==1)
        {%>
            <span class="menuButton"><g:link class="home" controller="proyecto" action="create">Regresar como administrador</g:link></span>
        <%}%>
            <span class="menuButton"><g:link class="list" action="list">lista de tematicas</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">nueva tematica</g:link></span>
        </div>
        <div class="body">
            <h1>editar tematica</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${subjectInstance}">
            <div class="errors">
                <g:renderErrors bean="${subjectInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${subjectInstance?.id}" />
                <input type="hidden" name="version" value="${subjectInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>

                        <tr class="prop">
                            <td valign="top" class="name">
                                <label for="nameSubject">Nombre de la Tematica:</label>
                            </td>
                            <td valign="top" class="value ${hasErrors(bean:subjectInstance,field:'nameSubject','errors')}">
                                <input type="text" id="nameSubject" name="nameSubject" value="${fieldValue(bean:subjectInstance,field:'nameSubject')}"/>
                            </td>
                        </tr>



                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label > Area:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:subjectInstance,field:'idArea','errors')}">
                                    <select name="idArea">
                                       <option value="">SELECCIONA LA TEMATICA</option>
                                    <g:each var="c" in="${area}" >
                                    <option value="${c.id_area}">
                                      ${c.name_area}
                                    </option>
                                    </g:each>
                                    </select>
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
