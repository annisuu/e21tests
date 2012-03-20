

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Rol List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Rol</g:link></span>
        </div>
        <div class="body">
            <h1>Rol List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nameRol" title="Name Rol" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${rolInstanceList}" status="i" var="rolInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${rolInstance.id}">${fieldValue(bean:rolInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:rolInstance, field:'nameRol')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${rolInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
