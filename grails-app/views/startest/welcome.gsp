<%--
  Created by IntelliJ IDEA.
  User: Quaxar2
  Date: Apr 14, 2012
  Time: 1:19:30 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title>

  </head>
  <body>Bienvenido ${session.user?.name_user}&nbsp;${session.user?.last_name} <br>
  
  Ha elegido realizar el test ${nameTest}
  De click en siguiente para realizar el test
  <g:link action="showTest" params="[nameTest:nameTest,idTest:idTest]">Ir al Examen</g:link>
  </body>
</html>