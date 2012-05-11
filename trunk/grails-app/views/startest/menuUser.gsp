<%--
  Created by IntelliJ IDEA.
  User: aNn
  Date: 10/04/2012
  Time: 09:37:49 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta name="layout" content="mainUser" />
    <resource:accordion skin="default" />

    <title>Simple GSP page</title></head>
  <body>

  BIENVENIDO
  ELIJE DE LA SIGUIENTE CATEGOR&Iacute;A DE TEMAS, LA CATEGOR&Iacute;A QUE EL INSTRUCTOR TE INDIQUE:
  <TABLE align="center">
    <tr> <td aling="center">

  <richui:accordion style="width: 500px;">
    <g:each var="temas" in="${tematicas}">
     <richui:accordionItem caption="${temas.name_subject}">
         <g:each var="examen" in="${examen}">
         <%if("${temas.id_subject}"==examen.subject.toString()){ int contador=0;%>
           <g:each var="tDone" in="${tDone}">
           <%if(examen.id_test.toString().equals(tDone.idTest.toString())){contador=1;%>
           <%}%>
           </g:each>
             <%
               if(contador==0){
                %>
             <g:link action="welcome" params="[nameTest:examen.name_test,idTest:examen.id_test]">${examen.name_test}</g:link><br>
           <%
               }
             }%>
           </g:each>
        </richui:accordionItem>
      </g:each>
    </richui:accordion>
      </td>
    </tr>
  </TABLE>

  </body>

</html>