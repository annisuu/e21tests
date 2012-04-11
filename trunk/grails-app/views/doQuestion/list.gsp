

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>DoQuestion List</title>

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
            <span class="menuButton"><g:link class="create" action="create">New DoQuestion</g:link></span>
        </div>
        <div class="body">
            <h1>DoQuestion List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="id_test" title="Idtest" />
                        
                   	        <g:sortableColumn property="questiontext" title="Questiontext" />
                        
                   	        <g:sortableColumn property="answer1" title="Answer1" />
                        
                   	        <g:sortableColumn property="image1" title="Image1" />
                        
                   	        <g:sortableColumn property="answer2" title="Answer2" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${doQuestionInstanceList}" status="i" var="doQuestionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${doQuestionInstance.id}">${fieldValue(bean:doQuestionInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'id_test')}</td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'questiontext')}</td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'answer1')}</td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'image1')}</td>
                        
                            <td>${fieldValue(bean:doQuestionInstance, field:'answer2')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${doQuestionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
