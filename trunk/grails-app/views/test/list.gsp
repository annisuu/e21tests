

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>lista de test</title>


    </head>
    <body>
        <div class="nav">
              <% if(session.user?.id_rol==1)
        {%>
            <span class="menuButton"><g:link class="home" controller="proyecto" action="create">Regresar como administrador</g:link></span>
        <%}%>
            <span class="menuButton"><g:link class="create" action="create">nuevo test</g:link></span>
        </div>
        <div class="body">
            <h1>lista de test</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                            <g:sortableColumn property="nameTest" title="Nombre de Test" />
                   	        <g:sortableColumn property="idSubject" title="Tematica" />

                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${testInstanceList}" status="i" var="testInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${testInstance.id}">${fieldValue(bean:testInstance, field:'id')}</g:link></td>
                        
                              <td>${fieldValue(bean:testInstance, field:'nameTest')}</td>



                            <td>  <g:each var="subject" in="${subject}">
                                <%if("${testInstance.idSubject}"==subject.id.toString()){println subject.name}%>
                                </g:each></td>



                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${testInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
