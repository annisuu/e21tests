

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>User List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New User</g:link></span>
        </div>
        <div class="body">
            <h1>User List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="idArea" title="Id Area" />
                        
                   	        <g:sortableColumn property="idCompany" title="Id Company" />
                        
                   	        <g:sortableColumn property="idPost" title="Id Post" />
                        
                   	        <g:sortableColumn property="idProyecto" title="Id Proyecto" />
                        
                   	        <g:sortableColumn property="idrol" title="Idrol" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean:userInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:userInstance, field:'idArea')}</td>
                        
                            <td>${fieldValue(bean:userInstance, field:'idCompany')}</td>
                        
                            <td>${fieldValue(bean:userInstance, field:'idPost')}</td>
                        
                            <td>${fieldValue(bean:userInstance, field:'idProyecto')}</td>
                        
                            <td>${fieldValue(bean:userInstance, field:'idrol')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${userInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
