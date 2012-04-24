<%--
  Created by IntelliJ IDEA.
  User: Quaxar2
  Date: Apr 14, 2012
  Time: 2:03:18 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <meta name="layout" content="mainUser" />
    <title>Simple GSP page</title>
  <g:javascript>
   <g:if test="${flash.message}">
            alert("${flash.message}")
            </g:if>
  </g:javascript>
  </head>
<body >
<g:form action="save" method="post">

  <h2> Pregunta ${question.numberq} :</h2>
  <div>
    <input type="hidden" name="counter" value="${question.numberq}">
    <input type="hidden" name="idTest" value="${idTest}">
   <input type="hidden" name="iduser" value="${session.user?.idu}">
  </div>
  <%
  String image1=question.image1!=" "?question.image1:"no"
  String image2=question.image2!=" "?question.image2:"no"
  String image3=question.image3!=" "?question.image2:"no"
  %>
   <table width="435" height="248" aling="center">
   <tr><td colspan="9"><h2>${question.questiontext}</h2></td></tr>
      <tr>
      <td width="18">A)</td>
      <td width="22"><input type="radio" name="respuesta" value="A"></td>
      <td width="128">${question.answer1}</td>
       <td width="17">B)</td>
       <td width="22"><input type="radio" name="respuesta" value="B"></td>
      <td width="128">${question.answer2}</td>
       <td width="18">C)</td>
      <td width="20"><input type="radio" name="respuesta" value="C"></td>
      <td width="130">${question.answer3}</td>
     </tr>
      <tr>
      <td colspan="3"><%if(!image1.equals("no")){%><img src="${resource(dir:'/images/upload/imagesQuestion',file:image1)}" width="139" height="97" alt="<%=image1%>"/><%}%></td>
	  <td colspan="3"><%if(!image2.equals("no")){%><img src="${resource(dir:'/images/upload/imagesQuestion',file:image2)}" width="139" height="97" alt="<%=image2%>"/><%}%></td>
	  <td colspan="3"><%if(!image3.equals("no")){%><img src="${resource(dir:'/images/upload/imagesQuestion',file:image3)}" width="139" height="97" alt="<%=image3%>"/><%}%></td>
      </tr>
      <tr>

      </tr>

      </table>
   <input class="save" type="submit" value="Siguiente" />
   </g:form>

</body>
</html>