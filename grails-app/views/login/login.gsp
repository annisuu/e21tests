<html>
    <head>
       <title>Login Page</title>
       <meta name="layout" content="main" />
    </head>
    <body>
       <div class="body">
           <g:if test="${flash.message}">
               <div class="message">
                ${flash.message}
             </div>
         </g:if>
          <p>
             Bienvenido a Gestión de eventos
          </p>
          <form action="manejaLogin">
              <span class='nameClear'><label for="usuario">Usuario:</label>
              </span>               <td valign="top" class="value ${hasErrors(bean:userInstance,field:'usuario','errors')}">
              <input type="text" id="usuario" name="usuario" value="${fieldValue(bean:userInstance,field:'usuario')}"/>
              </td>
              <span class='nameClear'><label for="pasword">Password:</label> 
              <td valign="top" value="${hasErrors(bean:userInstance,field:'pasword','errors')}">
              <input type="password" id="pasword" name="pasword" value="${fieldValue(bean:userInstance,field:'pasword')}"/>
              </td>
              <div class="buttons">
               <span class="button"><input class="save" type="submit" value="Login"
/></span>
                </div>
              </div>
          </form>
      </div>
   </body>
</html>