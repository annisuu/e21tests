

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
       <meta name="layout" content="mainAdmin" />
        <title>lista de empresas</title>
    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="create" action="create">Nueva Empresa</g:link></span>
        </div>
        <div class="body">
            <h1>lista de empresas</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nameCompany" title="Nombre de Empresa" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${companyInstanceList}" status="i" var="companyInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${companyInstance.id}">${fieldValue(bean:companyInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:companyInstance, field:'nameCompany')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${companyInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
