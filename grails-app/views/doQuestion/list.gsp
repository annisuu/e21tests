

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>DoQuestion List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New DoQuestion</g:link></span>
        </div>
        <div class="body">
            <h1>DoQuestion List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="answer1" title="Answer1" />
                        
                   	        <g:sortableColumn property="answer2" title="Answer2" />
                        
                   	        <g:sortableColumn property="answer3" title="Answer3" />
                        
                   	        <g:sortableColumn property="id_test" title="Idtest" />
                        
                   	        <g:sortableColumn property="image1" title="Image1" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${doQuestionInstanceList}" status="i" var="doQuestionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${doQuestionInstance.id}">${fieldValue(bean:doQuestionInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'answer1')}</td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'answer2')}</td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'answer3')}</td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'id_test')}</td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'image1')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${doQuestionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
