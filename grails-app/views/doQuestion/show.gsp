

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show DoQuestion</title>

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
            <h1>Show DoQuestion</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Questiontext:</b></td>
                          </tr>
                          <tr class="prop">
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'questiontext')}</td>

                        </tr>

                        <tr class="prop">


                            <td valign="top" class="value">a) <input type="radio" name="1" value="${fieldValue(bean:doQuestionInstance, field:'answer1')}">
                            ${fieldValue(bean:doQuestionInstance, field:'answer1')}</td>

                        </tr>

                        <tr class="prop">

                           <td valign="top" class="value">b) <input type="radio" name="2" value="${fieldValue(bean:doQuestionInstance, field:'answer2')}">
                           ${fieldValue(bean:doQuestionInstance, field:'answer2')}</td>

                        </tr>



                        <tr class="prop">

                            <td valign="top" class="value">c) <input type="radio" name="3" value="${fieldValue(bean:doQuestionInstance, field:'answer3')}">
                            ${fieldValue(bean:doQuestionInstance, field:'answer3')}</td>

                        </tr>



                        <tr class="prop">
                            <td valign="top" class="name">Respuesta correcta: ${fieldValue(bean:doQuestionInstance, field:'trueanswer')}</td>

                        </tr>

                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${doQuestionInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
