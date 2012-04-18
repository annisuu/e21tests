

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>Show DoTest</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">DoTest List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New DoTest</g:link></span>
        </div>
        <div class="body">
            <h1>Show DoTest</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer10 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer10A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer10 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer10B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer10 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer10C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer1 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer1A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer1 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer1B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer1 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer1C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer2 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer2A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer2 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer2B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer2 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer2C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer3 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer3A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer3 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer3B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer3 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer3C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer4 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer4A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer4 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer4B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer4 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer4C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer5 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer5A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer5 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer5B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer5 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer5C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer6 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer6A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer6 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer6B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer6 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer6C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer7 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer7A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer7 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer7B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer7 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer7C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer8 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer8A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer8 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer8B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer8 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer8C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer9 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer9A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer9 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer9B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Answer9 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'answer9C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Id Area:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'idArea')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Id Subject:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'idSubject')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Idtest:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'id_test')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image10 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image10A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image10 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image10B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image10 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image10C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image1 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image1A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image1 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image1B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image1 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image1C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image2 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image2A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image2 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image2B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image2 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image2C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image3 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image3A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image3 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image3B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image3 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image3C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image4 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image4A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image4 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image4B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image4 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image4C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image5 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image5A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image5 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image5B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image5 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image5C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image6 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image6A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image6 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image6B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image6 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image6C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image7 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image7A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image7 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image7B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image7 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image7C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image8 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image8A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image8 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image8B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image8 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image8C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image9 A:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image9A')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image9 B:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image9B')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image9 C:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'image9C')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Name Test:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'nameTest')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question10:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question10')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question3')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question4:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question4')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question5:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question5')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question6:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question6')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question7:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question7')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question8:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question8')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Question9:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'question9')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer10:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer10')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer3')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer4:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer4')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer5:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer5')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer6:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer6')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer7:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer7')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer8:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer8')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Trueanswer9:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:doTestInstance, field:'trueanswer9')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${doTestInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
