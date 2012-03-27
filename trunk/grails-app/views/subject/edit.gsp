

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Subject</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Subject List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Subject</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Subject</h1>
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
                                    <label for="idArea">Id Area:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:subjectInstance,field:'idArea','errors')}">
                                    <input type="text" id="idArea" name="idArea" value="${fieldValue(bean:subjectInstance,field:'idArea')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameSubject">Name Subject:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:subjectInstance,field:'nameSubject','errors')}">
                                    <input type="text" id="nameSubject" name="nameSubject" value="${fieldValue(bean:subjectInstance,field:'nameSubject')}"/>
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