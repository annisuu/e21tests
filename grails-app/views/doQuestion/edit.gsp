

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit DoQuestion</title>

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
            <span class="menuButton"><g:link class="list" action="list">DoQuestion List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New DoQuestion</g:link></span>
        </div>
        <div class="body">
            <h1>Edit DoQuestion</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${doQuestionInstance}">
            <div class="errors">
                <g:renderErrors bean="${doQuestionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${doQuestionInstance?.id}" />
                <input type="hidden" name="version" value="${doQuestionInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="id_test">Idtest:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'id_test','errors')}">
                                    <input type="text" id="id_test" name="id_test" value="${fieldValue(bean:doQuestionInstance,field:'id_test')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="questiontext">Questiontext:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'questiontext','errors')}">
                                    <input type="text" id="questiontext" name="questiontext" value="${fieldValue(bean:doQuestionInstance,field:'questiontext')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer1">Answer1:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'answer1','errors')}">
                                    <input type="text" id="answer1" name="answer1" value="${fieldValue(bean:doQuestionInstance,field:'answer1')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image1">Image1:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'image1','errors')}">
                                    <input type="text" id="image1" name="image1" value="${fieldValue(bean:doQuestionInstance,field:'image1')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer2">Answer2:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'answer2','errors')}">
                                    <input type="text" id="answer2" name="answer2" value="${fieldValue(bean:doQuestionInstance,field:'answer2')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image2">Image2:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'image2','errors')}">
                                    <input type="text" id="image2" name="image2" value="${fieldValue(bean:doQuestionInstance,field:'image2')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer3">Answer3:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'answer3','errors')}">
                                    <input type="text" id="answer3" name="answer3" value="${fieldValue(bean:doQuestionInstance,field:'answer3')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image3">Image3:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'image3','errors')}">
                                    <input type="text" id="image3" name="image3" value="${fieldValue(bean:doQuestionInstance,field:'image3')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer">Trueanswer:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'trueanswer','errors')}">
                                    <input type="text" id="trueanswer" name="trueanswer" value="${fieldValue(bean:doQuestionInstance,field:'trueanswer')}"/>
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
