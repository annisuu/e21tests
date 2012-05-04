<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="${resource(dir:'css/cssLogin/',file:'style.css')}" />
<title> .:::: BIENVENIDO::::.  </title>

<style type="text/css">
body {
     background-image: url(../images/bg_page.png);
}
#apDiv1 {
	position:absolute;
	width:393px;
	height:28px;
	z-index:1;
	left: 28px;
	top: 127px;
}
.Estilo5 {
	font-size: 18px;
	font-weight: bold;
	color: #008080;
}
</style>
</head>

<body>
<g:javascript>
<g:if test="${flash.message}">

     alert( "${flash.message}"  )

     </g:if>
</g:javascript>
<form action="manejaLogin">
<BR><BR>
<BR><BR>
<div id="wrapper">
<div id="login" class="animate form">
<H1>LOG IN </H1>

<label for="password" class="youpasswd" data-icon="p"> Contrase&ntilde;a / password: </label>
  <input type="password" id="pasword" name="pasword" value="${fieldValue(bean:userInstance,field:'pasword')}" placeholder="********"/>
<BR><BR>
<p class="login button" align="center">
<input class="save" type="submit" value="Login">
<INPUT type="reset" NAME="botonLimpiar" VALUE="Limpiar" >
</p>
<HR WIDTH=100%>
</div></div>

</form>






</body>
</html>
