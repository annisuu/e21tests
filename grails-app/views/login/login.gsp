<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" type="text/css" href="CSS/cssLogin/style.css" />
<title>Documento sin t&iacute;tulo</title>
<SCRIPT LANGUAGE ="JavaScript">
<!-- se oculta la información de los navegadores antiguos

  function informar(){

    var mensaje = "Usuario no autorizado...";
	window.location="C:/xampp/htdocs/odebrecht/Index.html";
    var usuarios = new Array(3);
    var claves = new Array(3);

    usuarios[0] = "ADMINISTRADOR";
    usuarios[1] = "INSTRUTOR";
    usuarios[2] = "INTEGRANTES";

    claves[0] = "odebrecht2012"
    claves[1] = "odebrecht"
    claves[2] = "12345"

    for (i=0; i<usuarios.length; i++){
        if ((usuarios[i]==document.miFormulario.usuario.value.toUpperCase())
            && (claves[i]==document.miFormulario.password.value)){
            mensaje = "Bienvenido al sistema S.S.T.M.A.";
			window.location="C:/xampp/htdocs/odebrecht/paginas/AltaProyecto.html";
            break;
        }

    }
    alert(mensaje);
    document.miFormulario.botonLimpiar.click();
    document.miFormulario.usuario.focus( );

  }
// final del comentario -->
</SCRIPT>
<style type="text/css">
body {
	background-image: url(imagenes/metallic.jpg);
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

<FORM NAME="miFormulario" ACTION="javascript:informar()">
<BR><BR>
<BR><BR>
<div id="wrapper">
<div id="login" class="animate form">
<H1>LOG IN </H1>
<div class="Estilo5" id="apDiv1">Introduzca su Usuario y Contraseña...</div>
<label for="username" class="uname" data-icon="u" >Usuario: </label>
<INPUT type="text" NAME="usuario" placeholder="Introdusca el nombre del usuario"/>
<BR><BR>
<label for="password" class="youpasswd" data-icon="p"> Contraseña / password: </label>
<INPUT type="password" NAME="password" placeholder="********"/>
<BR><BR>
<p class="login button" align="center">
<INPUT type="submit" NAME="botonEnviar" VALUE="Enviar" >
<INPUT type="reset" NAME="botonLimpiar" VALUE="Limpiar" >
</p>
<HR WIDTH=100%>
</div></div>

</FORM>






</body>
</html>
