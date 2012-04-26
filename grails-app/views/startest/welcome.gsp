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
    <meta name="layout" content="mainUser" />
    <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {
	font-size: 18px;
	font-weight: bold;
}
-->
    </style>
</head>
<body>
  <div align="center">
    <p class="style1">Hola ${session.user?.name_user}&nbsp;,</p>
    <p class="style1"><br>
      Ha elegido realizar el siguiente examen:</p>
    <p class="style1"> &quot;${nameTest} &quot;</p>
    <p class="style1">&nbsp;</p>
    <p class="style1">&nbsp;</p>
</div>
  <span class="style1"><g:link action="showTest" params="[nameTest:nameTest,idTest:idTest]">
    <div align="center">
      <p>Ir al Examen</p>
      </div>
  </g:link>
 </span>
<g:link action="menuUser"><div align="center">
      <p class="style2">Regresar al menu</p>
    </div>
  </g:link>

</body>
</html>