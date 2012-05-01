

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <meta name="layout" content="mainAdmin" />
        <title>lista de proyectos</title>

    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="create" action="create">nuevo proyecto</g:link></span>
        </div>
        <div class="body">
            <h1>lista de proyectos</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nameProyecto" title="Nombre de Proyecto" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${proyectoInstanceList}" status="i" var="proyectoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${proyectoInstance.id}">${fieldValue(bean:proyectoInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:proyectoInstance, field:'nameProyecto')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${proyectoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
