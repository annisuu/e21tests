<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create DoQuestion</title>

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">DoQuestion List</g:link></span>
         
       <%  session.setAttribute("ana","ann") %>
        </div>
        <div class="body">
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
                    <table>
                        <tbody>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="questiontext">Questiontext:</label>
                                </td>
                                <td colspan="4" valign="top" class="value ${hasErrors(bean:doQuestionInstance,field:'questiontext','errors')}">
                                <input type="hidden" id="id_test" name="id_test" value="1"/>
                                <input type="text" id="questiontext" name="questiontext" value="${fieldValue(bean:doQuestionInstance,field:'questiontext')}"/>
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
        </div>
    </body>
</html>
