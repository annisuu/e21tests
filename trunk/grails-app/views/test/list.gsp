

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>Lista de Test</title>


    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="create" action="create">Nuevo Test</g:link></span>
        </div>
        <div class="body">
            <h1>Lista de Test</h1>
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
                            <g:sortableColumn property="idArea" title="Area" />


                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${testInstanceList}" status="i" var="testInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${testInstance.id}">${fieldValue(bean:testInstance, field:'id')}</g:link></td>
                        
                              <td>${fieldValue(bean:testInstance, field:'nameTest')}</td>

                            <td>
                                <g:each var="a" in="${area}">
                                <%if("${testInstance.idArea}"==a.id_area.toString()){println a.name_area}%>
                                </g:each></td>

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
