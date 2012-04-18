

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>DoTest List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New DoTest</g:link></span>
        </div>
        <div class="body">
            <h1>DoTest List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="answer10A" title="Answer10 A" />
                        
                   	        <g:sortableColumn property="answer10B" title="Answer10 B" />
                        
                   	        <g:sortableColumn property="answer10C" title="Answer10 C" />
                        
                   	        <g:sortableColumn property="answer1A" title="Answer1 A" />
                        
                   	        <g:sortableColumn property="answer1B" title="Answer1 B" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${doTestInstanceList}" status="i" var="doTestInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${doTestInstance.id}">${fieldValue(bean:doTestInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:doTestInstance, field:'answer10A')}</td>
                        
                            <td>${fieldValue(bean:doTestInstance, field:'answer10B')}</td>
                        
                            <td>${fieldValue(bean:doTestInstance, field:'answer10C')}</td>
                        
                            <td>${fieldValue(bean:doTestInstance, field:'answer1A')}</td>
                        
                            <td>${fieldValue(bean:doTestInstance, field:'answer1B')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${doTestInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
