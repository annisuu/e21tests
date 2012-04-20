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


<div id="margenAdmin">
    <div id="apDiv8">
        <g:layoutBody />

</div>
</div>


        <div  id="Login">
        <g:if test="${session.user}">
        BIENVENIDO: <b>${session.user?.name_user}&nbsp;${session.user?.last_name}</b>&nbsp;
        <p></p> AREA:<b>${session.user?.name_area}</b>&nbsp;
        <p>PROYECTO: <b>${session.user?.name_project}</b>
        <p></p> LOGUEADO COMO: &nbsp;<b>${session.user?.name_rol}</b>
        <g:link controller="login" action="logout">Logout</g:link>
        </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>
</div>
</div>

    </body>
</html>