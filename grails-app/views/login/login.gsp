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
            Bienvenido
          </p>
          <form action="manejaLogin">

              <span class='nameClear'><label for="pasword">Password:</label> 
              <td valign="top" value="${hasErrors(bean:userInstance,field:'pasword','errors')}">
              <input type="password" id="pasword" name="pasword" value="${fieldValue(bean:userInstance,field:'pasword')}"/>
              </td>
              <div class="buttons">
               <span class="button"><input class="save" type="submit" value="Login"></span>
                </div></span>
            
          </form>
      </div>
   </body>
</html>