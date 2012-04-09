

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Test List</title>


      <g:if test="${session.user}">
        Usuario: <b>${session.user?.name_user}&nbsp;${session.user?.last_name}</b>
         <p> Projecto:<b>${session.user?.name_project}</b> </p>
         <p> Rol:<b>${session.user?.name_rol}</b> </p>

         <g:link controller="login" action="logout">Logout</g:link>
      </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Test</g:link></span>
        </div>
        <div class="body">
            <h1>Test List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />

                             <g:sortableColumn property="nameTest" title="Nombre de Test" />

                   	        <g:sortableColumn property="idArea" title="Area" />
                        
                   	        <g:sortableColumn property="idSubject" title="Tematica" />


                        
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
