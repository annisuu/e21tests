<%--
  Created by IntelliJ IDEA.
  User: Quaxar2
  Date: Apr 24, 2012
  Time: 12:06:37 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title>
    <meta name="layout" content="mainUser" />
     <g:javascript>
   <g:if test="${flash.message}">
            alert("${flash.message}")
            </g:if>
  </g:javascript>
  </head>
  <body><div align="center"><h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    <h1>Gracias por Contestar el test, tu calificaci&oacute;n es:</h1>
    <h1> ${score} </h1>
  </div>
  </body>
</html>