

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>lista de tematicas </title>
      
    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="create" action="create">Nueva Tematica</g:link></span>
        </div>
        <div class="body">
            <h1>lista de tematicas</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	            <g:sortableColumn property="nameSubject" title="Nombre de Tematica" />

                   	        <g:sortableColumn property="idArea" title="Area" />
                        

                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${subjectInstanceList}" status="i" var="subjectInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${subjectInstance.id}">${fieldValue(bean:subjectInstance, field:'id')}</g:link></td>

                               <td>${fieldValue(bean:subjectInstance, field:'nameSubject')}</td>

                                <td><g:each var="a" in="${area}">
                                <%if("${subjectInstance.idArea}"==a.id_area.toString()){println a.name_area}%>
                                </g:each></td>
                        

                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${subjectInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
