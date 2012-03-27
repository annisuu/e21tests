

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show DoQuestion</title>
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
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'answer1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'answer2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'answer3')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Idtest:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'id_test')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'image1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'image2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'image3')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Questiontext:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'questiontext')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tf1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'tf1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tf2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'tf2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tf3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doQuestionInstance, field:'tf3')}</td>
                            
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
