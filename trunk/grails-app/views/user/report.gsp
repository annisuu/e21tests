

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <meta name="layout" content="mainAdmin" />
        <title>lista de usuarios que han realizado test</title>
      <r:require module="export"/>
      <link rel="stylesheet" href="${resource(dir:'css',file:'export.css')}" />


    </head>
    <body>


        <div class="body">
            <h1>lista de usuarios que han realizado test</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                   	        <g:sortableColumn property="id" title="Id"/>
                            <g:sortableColumn property="name_user" title="Nombre"/>
                   	        <g:sortableColumn property="last_name" title="Apellido"/>
                   	        <g:sortableColumn property="name_company" title="Empresa"/>
                   	        <g:sortableColumn property="name_area" title="Area"/>
                            <g:sortableColumn property="name_test" title="Test"/>
                            <g:sortableColumn property="finalscore" title="Calificación"/>
                   	        <g:sortableColumn property="enddate" title="Fecha de Realización"/>
                        </tr>

                    </thead>

                    <tbody>
                         <g:each in="${reports}" status="i" var="reports">
                      <tr>
                        <td><g:link action="show" id="${reports.id_user}">${reports.id_user.toString()}</g:link></td>

                        <td>${reports.name_user}</td>
                        <td>${reports.last_name}</td>
                        <td>${reports.name_company}</td>
                        <td>${reports.name_area}</td>
                        <td>${reports.name_test}</td>
                        <td>${reports.finalscore}</td>
                        <td>${reports.enddate}</td>
                      </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
            </div>
 <export:formats formats="['excel','pdf']" action="generaReport" params="[identifier:identifier]" />
        </div>
    </body>
</html>
