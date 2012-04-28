<html>
    <head>
        <title>INSTRUCTOR <g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <link rel="stylesheet"  type="text/css" href="${createLinkTo(dir:'css',file:'SpryAccordion.css')}" media="screen"/>
        <link rel="stylesheet"  type="text/css" href="${createLinkTo(dir:'css',file:'CSS.css')}" media="screen"/>
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
.Estilo5 {color: #000000}

-->
</style>

   <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
   <resource:autoComplete skin="default" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
     <div id="TransparenciaInstructor" >





   <div id="apDiv2">
  <g:javascript type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','916','height','88','title','LOGO','src','/etileno/images/swf/logo2','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','/etileno/images/swf/LOGO' ); //end AC code
</g:javascript><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="916" height="88" title="logo">
    <param name="movie" value="/etileno/images/swf/LOGO.swf" />
    <param name="quality" value="high" />
    <embed src="../images/swf/LOGO.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="916" height="88"></embed>
  </object>
</noscript></div>

<div id="apDiv6">



<g:javascript library="sc77xq7-inst"></g:javascript>

<table id="vista-buttons.com:id77xq7" width=0 cellpadding=0 cellspacing=0 border=0><tr>


 <td style="padding-right:20px" title ="Trabajadores">
 <g:link controller="user" action="createWorker" onMouseOver="xpe('77xq7o');" onMouseOut="xpe('77xq7n');" onMouseDown="xpe('77xq7c');"><img src="${resource(dir:'images/Instructor-files',file:'bt77xq7_0.gif')}"id="xpi_77xq7" name="vb77xq7" width="135" height="44" border="0" alt="Trabajadores"/></g:link></td>
   <td style="padding-right:20px" title ="Gestor de Test">
 <g:link controller="user" action="reportWorker" onMouseOver="xpe('q7xq7o');" onMouseOut="xpe('q7xq7n');" onMouseDown="xpe('q7xq7c');"><img src="${resource(dir:'images/Instructor-files',file:'btq7xq7_0.gif')}" id="xpi_q7xq7" name="vbq7xq7" width="135" height="44" border="0" alt="Reportes"/></g:link></td>
 <td style="padding-right:20px" title ="Cerrar Sesion">
 <g:link controller="login" action="logout" onMouseOver="xpe('m7xq7o');" onMouseOut="xpe('m7xq7n');" onMouseDown="xpe('m7xq7c');"><img  src="${resource(dir:'images/Instructor-files',file:'btm7xq7_0.gif')}" id="xpi_m7xq7" name="vbm7xq7" width="135" height="44" border="0" alt="Cerrar Sesion"/></g:link></td>
</tr></table>


  </div>
  <div id="margenAdmin">
    <div id="apDiv8">
    <g:layoutBody />

</div>
</div>


  <div id="menuAdmin">
<g:javascript library="scm53h1-inst"></g:javascript>

<!-- Begin Vista-Buttons.com -->

<table id="vista-buttons.com:idm53h1" width=0 cellpadding=0 cellspacing=0 border=0><tr>
<td style="padding-bottom:12px" title ="CREAR TEMATICA">
<g:link controller="subject" onMouseOver="xpe('m53h1o');" onMouseOut="xpe('m53h1n');" onMouseDown="xpe('m53h1c');"><img id="xpi_m53h1" src="${resource(dir:'images/Instructor-files',file:'btm53h1_0.gif')}" name="vbm53h1" width="150" height="35" border="0" alt="CREAR TEMATICA"/></g:link></td></tr><tr>
<td style="padding-bottom:12px" title ="CREAR TEST">
<g:link controller="doTest"  onMouseOver="xpe('553h1o');" onMouseOut="xpe('553h1n');" onMouseDown="xpe('553h1c');"><img id="xpi_553h1" src="${resource(dir:'images/Instructor-files',file:'bt553h1_0.gif')}" name="vb553h1" width="150" height="35" border="0" alt="CREAR TEST"/></g:link></td></tr><tr>
</tr></table>

<!-- End Vista-Buttons.com -->
</div>

       <div  id="Login">
        <g:if test="${session.user}">
        BIENVENIDO:  <b>${session.user?.name_user}&nbsp;${session.user?.last_name}</b>
        <p>AREA: <b>${session.user?.name_area}</b></p>
        <p>PROYECTO: <b>${session.user?.name_project}</b></p>
        <p>LOGUEADO COMO: <b>${session.user?.name_rol}</b></p>
        <g:link controller="login" action="logout"></g:link>
        </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>
</div>
</div>

    </body>
</html>