

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <meta name="layout" content="mainInstruc" />
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
                   <g:form action="findReportsw">
                    <tr>
                      <td colspan="3">Busqueda por:&nbsp;&nbsp;&nbsp; 

                        <select name="parametro">
                        <option value="name_user" <%if(parametro.toString()=="name_user"){ println "selected"}%>> NOMBRE</option>
                        <option value="last_name" <%if(parametro.toString()=="last_name"){ println "selected"}%>> APELLIDO</option>
                        <option value="name_company" <%if(parametro.toString()=="name_company"){ println "selected"}%>>EMPRESA</option>
                        <option value="name_area" <%if(parametro.toString()=="name_area"){ println "selected"}%>>AREA</option>
                        <option value="name_test" <%if(parametro.toString()=="name_test"){ println "selected"}%>>TEST</option>
                        <option value="finalscore" <%if(parametro.toString()=="finalscore"){ println "selected"}%>>RESULTADO</option>
                      </select>
                       &nbsp;&nbsp;&nbsp;
                     <input type="text" name="value" value=${value}>
                        &nbsp;&nbsp;&nbsp;
                     <span class="button"><input class="save" type="submit" value="Buscar" /> </span>
          </td>
                      </tr>
                      </g:form>
                    </thead>
                     </table>

                   <%if(reports!=null){%>

                   <table>
                   <thead>
                   <tr>
                   	        <g:sortableColumn property="id" title="Id"/>
                            <g:sortableColumn property="name_user" title="NOMBRE"/>
                   	        <g:sortableColumn property="last_name" title="APELLIDO"/>
                   	        <g:sortableColumn property="name_company" title="EMPRESA"/>
                   	        <g:sortableColumn property="name_area" title="AREA"/>
                            <g:sortableColumn property="name_test" title="TEST"/>
                            <g:sortableColumn property="finalscore" title="RESULTADO"/>
                   	        <g:sortableColumn property="enddate" title="FECHA"/>
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
                        <td><g:link action="viewTest" params="[idT:reports.id_test,idu:reports.id_user]">${reports.name_test}</g:link></td>
                        <td>${reports.finalscore}</td>
                        <td>${reports.enddate}</td>
                      </tr>
                    </g:each>

                    </tbody>
                </table>
              <%if(reports.length){%>
              <export:formats formats="['excel','pdf']" action="generaReport" params="[identifier:identifier,parametro:parametro,value:value]" />
              
               <%
                   }
               }%>
            </div>
            <div class="paginateButtons">
            </div>
        </div>


    </body>
</html>
