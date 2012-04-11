<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create DoQuestion</title>

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
        </div>
            <h1>Create DoQuestion</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${doQuestionInstance}">
            <div class="errors">
                <g:renderErrors bean="${doQuestionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" enctype="multipart/form-data">
                <div class="dialog">
                    <table width="589" height="288">
                      <tbody>
<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idArea">Id Area:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:testInstance,field:'idArea','errors')}">
                                  <!--  <input type="text" id="idArea" name="idArea" value="${fieldValue(bean:testInstance,field:'idArea')}"/>  -->
                                      <select name="idArea" id="idArea">
                                      <g:each var="area" in ="${area}">
                                      <option  value="${area.id_area}">
                                        ${area.name_area}
                                      </option>
                                      </g:each>
                                      </select>
                                </td>
                          </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idSubject">Id Subject:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:testInstance,field:'idSubject','errors')}">
                                    <!--<input type="text" id="idSubject" name="idSubject" value="${fieldValue(bean:testInstance,field:'idSubject')}"/>-->
                                   <select name="idSubject" id="idSubject">
                                      <g:each var="subject" in ="${subject}">
                                      <option  value="${subject.id}">
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
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="questiontext">Questiontext:</label>
                                </td>
                                <td colspan="4" valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'questiontext','errors')}">
                                <input type="hidden" id="id_test" name="id_test" value="1"/>
                                <textarea id="questiontext" name="questiontext"></textarea>
                                </td>

                            </tr>
                        <tr><td colspan="4"><div align="center">OPCIONES DE RESPUESTA: </div></td> <td valign="top" class="name">
                                    <label for="trueanswer">Respuesta Correcta:</label>
                                </td></tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer1">Answer1:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'answer1','errors')}">
                                    <input type="text" id="answer1" name="answer1" value="${fieldValue(bean:doQuestionInstance,field:'answer1')}"/>
                                </td>

                                <td valign="top" class="name">
                                    <label for="image1">Image1:</label>
                                </td>
                              <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'image1','errors')}">
                                <input type="file" id="image1" name="image1" width="250px">

                              </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'trueanswer','errors')}">
                                    <div align="center">
                                      <input type="radio" id="trueanswer" name="trueanswer" value="1"/>
                                    </div></td>
                            </tr>
                        

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer2">Answer2:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'answer2','errors')}">
                                    <input type="text" id="answer2" name="answer2" value="${fieldValue(bean:doQuestionInstance,field:'answer2')}"/>
                                </td>

                                <td valign="top" class="name">
                                    <label for="image2">Image2:</label>
                                </td>
                              <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'image2','errors')}">
                                <input type="file" id="image2" name="image2" width="250px">
                              </td>
                                 <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'trueanswer','errors')}">
                                    <div align="center">
                                      <input type="radio" id="trueanswer" name="trueanswer" value="2"/>
                                    </div></td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer3">Answer3:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'answer3','errors')}">
                                    <input type="text" id="answer3" name="answer3" value="${fieldValue(bean:doQuestionInstance,field:'answer3')}"/>
                                </td>

                                <td valign="top" class="name">
                                    <label for="image3">Image3:</label>
                                </td>
                              <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'image3','errors')}">
                                <input type="file" id="image3" name="image3" width="250px">
                              </td>
                                <td valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'trueanswer','errors')}">
                                    <div align="center">
                                      <input type="radio" id="trueanswer" name="trueanswer" value="3"/>
                                    </div></td>
                            </tr>
                        	<tr><td colspan="6">&nbsp;</tr>
                            <tr class="prop">

                            </tr>

                        </tbody>
                  </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
    </body>
</html>
