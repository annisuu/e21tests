

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Test</title>


      <g:if test="${session.user}">
        Usuario: <b>${session.user?.name_user}&nbsp;${session.user?.last_name}</b>
         <p> Projecto:<b>${session.user?.name_project}</b> </p>
         <p> Rol:<b>${session.user?.name_rol}</b> </p>

         <g:link controller="login" action="logout">Logout</g:link>
      </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Test List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Test</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Test</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${testInstance}">
            <div class="errors">
                <g:renderErrors bean="${testInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${testInstance?.id}" />
                <input type="hidden" name="version" value="${testInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for=>Id Area:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:testInstance,field:'idArea','errors')}">
                                    <select name="idArea">
                                    <g:each var="c" in="${area}" >
                                    <option value="${c.id_area}">
                                      ${c.name_area}
                                    </option>
                                    </g:each>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for=>Id Subject:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:testInstance,field:'idSubject','errors')}">

                                  <select name="idSubject">
                                    <g:each var="subject" in="${subject}" >
                                    <option value="${subject.id}">
                                      ${subject.name}
                                    </option>
                                    </g:each>
                                    </select>
                                  
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameTest">Name Test:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:testInstance,field:'nameTest','errors')}">
                                    <input type="text" id="nameTest" name="nameTest" value="${fieldValue(bean:testInstance,field:'nameTest')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
