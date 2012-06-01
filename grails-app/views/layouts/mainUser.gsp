<html>
    <head>
        <title>USUARIO - <g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <link rel="stylesheet"  type="text/css" href="${createLinkTo(dir:'css',file:'SpryAccordion.css')}" media="screen"/>
        <link rel="stylesheet"  type="text/css" href="${createLinkTo(dir:'css',file:'CSS.css')}" media="screen"/>
        <g:javascript library="AC_RunActiveContent"></g:javascript>
        <g:javascript library="SpryAccordion"></g:javascript>
        <g:javascript library="scqznf6"></g:javascript>

<style type="text/css">



</style>
<style type="text/css">
<!--
.Estilo3 {
	color: #000000;
	font-weight: bold;
	font-size: 12px;
}
.Estilo4 {
	color: #000000;
	font-size: 12px;
}
.Estilo5 {color: #000000}

-->
</style>
   <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
        <g:layoutHead />
        <g:javascript library="application" />

    </head>
    <body>
     <div id="TransparenciaInstructor" >

  <div id="apDiv2">
  <g:javascript type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','955','height','85','title','LOGO','src','/etileno/images/swf/logo2','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','/etileno/images/swf/LOGO' ); //end AC code
</g:javascript><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="955" height="85" title="logo">
    <param name="movie" value="/etileno/images/swf/LOGO.swf" />
    <param name="quality" value="high" />
    <embed src="../images/swf/LOGO.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="955" height="85"></embed>
  </object>
</noscript></div>

<div id="menuUsuario">

<!-- Begin Vista-Buttons.com -->
<g:javascript library="schyrh2-user"></g:javascript>
<table id="vista-buttons.com:idhyrh2" width=0 cellpadding=0 cellspacing=0 border=0><tr>
<td style="padding-right:20px" title ="Proyecto">
<g:link controller="proyecto" action="proyectoWorker" onMouseOver="xpe('hyrh2o');" onMouseOut="xpe('hyrh2n');" onMouseDown="xpe('hyrh2c');"><img  src="${resource(dir:'images/usuario-files',file:'bthyrh2_0.gif')}" id="xpi_hyrh2" name="vbhyrh2" width="130" height="38" border="0" alt="Proyecto"/></g:link></td>
<td style="padding-right:20px" title ="Test">
<g:link controller="startest" action="menuUser" onMouseOver="xpe('jyrh2o');" onMouseOut="xpe('jyrh2n');" onMouseDown="xpe('jyrh2c');"><img src="${resource(dir:'images/usuario-files',file:'btjyrh2_0.gif')}"   id="xpi_jyrh2" name="vbjyrh2" width="130" height="38" border="0" alt="Test"/></g:link></td>
<td style="padding-right:5px" title ="Cerrar Sesion">
<g:link controller="login" action="logout" onMouseOver="xpe('kyrh2o');" onMouseOut="xpe('kyrh2n');" onMouseDown="xpe('kyrh2c');"><img  src="${resource(dir:'images/usuario-files',file:'btkyrh2_0.gif')}"  id="xpi_kyrh2" name="vbkyrh2" width="130" height="38" border="0" alt="Cerrar Sesion"/></g:link></td>
</tr></table>

   <!-- End Vista-Buttons.com -->
</div>



<div id="margenAdmin">
 <div id="apDiv8">
  <g:layoutBody /></div></div>



        <div  id="LoginInstructor">
        <g:if test="${session.user}">
        BIENVENIDO: <b>${session.user?.name_user}&nbsp;${session.user?.last_name}</b>&nbsp;
        <p></p> AREA:<b>${session.user?.name_area}</b>&nbsp;
        <p>PROYECTO: <b>${session.user?.name_project}</b>
        <p></p> LOGUEADO COMO: &nbsp;<b>${session.user?.name_rol}</b>
        <g:link controller="login" action="logout"></g:link>
        </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>
</div>
</div>

    </body>
</html>