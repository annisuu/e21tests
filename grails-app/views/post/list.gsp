

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <meta name="layout" content="mainAdmin" />
        <title>lista de cargos</title>

    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="create" action="create">nuevo cargo</g:link></span>
        </div>
        <div class="body">
            <h1>lista de cargos</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="namePost" title="Nombre de Cargo" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${postInstanceList}" status="i" var="postInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${postInstance.id}">${fieldValue(bean:postInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:postInstance, field:'namePost')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${postInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
