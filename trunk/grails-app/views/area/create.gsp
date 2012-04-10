<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="stylesheet" href="../css/CSS.css" media="screen" type="text/css" title="Mi hoja de estilo"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administrador S.S.T.M.A.</title>
<g:javascript library="AC_RunActiveContent"></g:javascript>
<g:javascript library="SpryAccordion"></g:javascript>
<g:javascript library="scqznf6"></g:javascript>

<style type="text/css">

#apDiv8 {
	position:absolute;
	width:666px;
	height:431px;
	z-index:7;
	left: 17px;
	top: 28px;
}

</style>
<link href="../css/SpryAccordion.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.Estilo3 {
	color: #000000;
	font-weight: bold;
	font-size: 14px;
}
.Estilo4 {
	color: #000000;
	font-size: 12px;
}
#menuAdmin {
	position:absolute;
	width:154px;
	height:225px;
	z-index:7;
	left: 76px;
	top: 248px;
}
-->
</style>
   <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
   <resource:autoComplete skin="default" />
</head>

<body>

<div id="TransparenciaInstructor" >

<div id="apDiv2">
  <g:javascript type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','916','height','88','title','logo','src','../images/swf/logo2','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','../images/swf/logo2' ); //end AC code
</g:javascript>
  <noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="916" height="88" title="logo">
    <param name="movie" value="../images/swf/logo2.swf" />
    <param name="quality" value="high" />
    <embed src="../images/swf/logo2.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="916" height="88"></embed>
  </object>
</noscript></div>

<div id="apDiv7">

<g:javascript library="schyrh2-inst"></g:javascript>
<table id="vista-buttons.com:idhyrh2" width=0 cellpadding=0 cellspacing=0 border=0><tr><td style="padding-right:20px" title ="Proyecto">
<a href="../proyecto" onMouseOver='xpe("hyrh2o");' onMouseOut='xpe("hyrh2n");' onMouseDown='xpe("hyrh2c");'><img id="xpi_hyrh2" src="../images/AltaInstructor-files/bthyrh2_0.gif" name="vbhyrh2" width="130" height="38" border="0" alt="Proyecto"/></a></td><td style="padding-right:20px" title ="Administrador">
<a href="AltaProyecto.html" onMouseOver='xpe("jyrh2o");' onMouseOut='xpe("jyrh2n");' onMouseDown='xpe("jyrh2c");'><img id="xpi_jyrh2" src="../images/AltaInstructor-files/btjyrh2_0.gif" name="vbjyrh2" width="130" height="38" border="0" alt="Administrador"/></a></td><td style="padding-right:20px" title ="Instructor">
<a  href="Trabajadores.html" onMouseOver='xpe("kyrh2o");' onMouseOut='xpe("kyrh2n");' onMouseDown='xpe("kyrh2c");'><img id="xpi_kyrh2" src="../images/AltaInstructor-files/btkyrh2_0.gif" name="vbkyrh2" width="130" height="38" border="0" alt="Instructor"/></a></td><td style="padding-right:20px" title ="Reportes">
<a href="Reportes.html" onMouseOver='xpe("gyrh2o");' onMouseOut='xpe("gyrh2n");' onMouseDown='xpe("gyrh2c");'><img id="xpi_gyrh2" src="../images/AltaInstructor-files/btgyrh2_0.gif" name="vbgyrh2" width="130" height="38" border="0" alt="Reportes"/></a></td><td style="padding-right:20px" title ="Test">
<a href="Test.html" onMouseOver='xpe("ixrh2o");' onMouseOut='xpe("ixrh2n");' onMouseDown='xpe("ixrh2c");'><img id="xpi_ixrh2" src="../images/AltaInstructor-files/btixrh2_0.gif" name="vbixrh2" width="130" height="38" border="0" alt="Test"/></a></td><td style="padding-right:20px" title ="Cerrar Sesion">
<a href="../Index.html" onMouseOver='xpe("1xrh2o");' onMouseOut='xpe("1xrh2n");' onMouseDown='xpe("1xrh2c");'><img id="xpi_1xrh2" src="../images/AltaInstructor-files/bt1xrh2_0.gif" name="vb1xrh2" width="130" height="38" border="0" alt="Cerrar Sesion"/></a></td></tr></table>

</div>
<div id="margenAdmin">
    <div id="apDiv8">

<fieldset>
  <legend><span class="Estilo3">Alta de Area</span></legend>
  <g:form action="save" method="post" >
  <legend><span class="Estilo3">AGREGAR AREAS </span></legend>
   <br />
  <label for="buscar"> <span class="Estilo4">Buscar:</span></label>
   <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'area/searchAJAX')}"
      onItemSelect="document.location.href = '${createLinkTo(dir: 'area/edit')}/' + id;" />
    <br/>
    <br/>

  <label for="nombre">  <span class="Estilo4">Nombre:</span></label>
  <input type="text" id="nameArea" name="nameArea" value="${fieldValue(bean:areaInstance,field:'nameArea')}"/> <br />
 <br />
  <table width="200" border="0" align="center">
  <tr>
    <td><center><input type="image" name="Guardar" value="Guardar" src="../images/Icons/Guardar.png" /></center></td>
    </tr>
  <tr>
    <td><input class="save" type="submit" value="Create" /></td>

  </tr>
</table>


</g:form>
</fieldset>

</div>
</div>

<div id="menuAdmin">



<!-- Begin Vista-Buttons.com -->
<g:javascript library="scm53h1"></g:javascript>

<table id="vista-buttons.com:idm53h1" width=0 cellpadding=0 cellspacing=0 border=0><tr><td style="padding-bottom:12px" title ="PROYECTO">
<a href="../proyecto" onMouseOver='xpe("m53h1o");' onMouseOut='xpe("m53h1n");' onMouseDown='xpe("m53h1c");'><img id="xpi_m53h1" src="../images/Odebrecht-files/btm53h1_0.gif" name="vbm53h1" width="130" height="35" border="0" alt="PROYECTO"/></a></td></tr><tr><td style="padding-bottom:12px" title ="EMPRESA">
<a href="../company" onMouseOver='xpe("553h1o");' onMouseOut='xpe("553h1n");' onMouseDown='xpe("553h1c");'><img id="xpi_553h1" src="../images/Odebrecht-files/bt553h1_0.gif" name="vb553h1" width="130" height="35" border="0" alt="EMPRESA"/></a></td></tr><tr><td style="padding-bottom:12px" title ="AREA">
<a href="../area" onMouseOver='xpe("a53h1o");' onMouseOut='xpe("a53h1n");' onMouseDown='xpe("a53h1c");'><img id="xpi_a53h1" src="../images/Odebrecht-files/bta53h1_0.gif" name="vba53h1" width="130" height="35" border="0" alt="AREA"/></a></td></tr><tr><td style="padding-bottom:12px" title ="CARGO">
<a href="../post" onMouseOver='xpe("s53h1o");' onMouseOut='xpe("s53h1n");' onMouseDown='xpe("s53h1c");'><img id="xpi_s53h1" src="../images/Odebrecht-files/bts53h1_0.gif" name="vbs53h1" width="130" height="35" border="0" alt="CARGO"/></a></td></tr><tr><td style="padding-bottom:12px" title ="INSTRUCTOR">
<a href="../user" onMouseOver='xpe("353h1o");' onMouseOut='xpe("353h1n");' onMouseDown='xpe("353h1c");'><img id="xpi_353h1" src="../images/Odebrecht-files/bt353h1_0.gif" name="vb353h1" width="130" height="35" border="0" alt="INSTRUCTOR"/></a></td></tr></table>

<!-- End Vista-Buttons.com -->

</div>
</div>
</div>
</body>
</html>
