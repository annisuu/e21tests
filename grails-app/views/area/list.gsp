

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Area List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Area</g:link></span>
        </div>
        <div class="body">
            <h1>Area List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nameArea" title="Name Area" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${areaInstanceList}" status="i" var="areaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${areaInstance.id}">${fieldValue(bean:areaInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:areaInstance, field:'nameArea')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${areaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
