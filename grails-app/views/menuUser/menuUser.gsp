<%--
  Created by IntelliJ IDEA.
  User: aNn
  Date: 10/04/2012
  Time: 09:37:49 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title></head>
<resource:accordion skin="default" />
  <body>

  BIENVENIDO AL TEST
  ELIJE DE LA SIGUIENTE CATEGOR&Iacute;A DE TEMAS LA CATEGOR&Iacute;A QUE EL INSTRUCTOR TE INDIQUE:
  <TABLE>
  
  <richui:accordion style="width: 500px;">
    <g:each var="temas" in="${tematicas}">
     <richui:accordionItem caption="${temas.name_subject}">
        </richui:accordionItem>
      </g:each>
    </richui:accordion>
  </TABLE>

  </body>

</html>