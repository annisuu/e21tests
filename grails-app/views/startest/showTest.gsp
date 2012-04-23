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
    <title>Simple GSP page</title></head>
<body>
  <h2> Pregunta ${counter} : </h2>
  <%
  String image1=question.image1!=" "?question.image1:"no"
  String image2=question.image2!=" "?question.image2:"no"
  String image3=question.image3!=" "?question.image2:"no"
  %>
   <table width="435" height="248" aling="center">
   <tr><td colspan="9"><h2>${question.questiontext}</h2></td></tr>
      <tr>
      <td width="18">A)</td>
      <td width="22"><input type="radio" value="A"></td>
      <td width="128">${question.answer1}</td>
       <td width="17">B)</td>
       <td width="22"><input type="radio" value="B"></td>
      <td width="128">${question.answer2}</td>
       <td width="18">C)</td>
      <td width="20"><input type="radio" value="C"></td>
      <td width="130">${question.answer3}</td>
     </tr>
      <tr>
      <td colspan="3"><%if(!image1.equals("no")){%><img src="${resource(dir:'/images/upload/imagesQuestion',file:image1)}" width="139" height="97" alt="<%=image1%>"/><%}%></td>
	  <td colspan="3"><%if(!image2.equals("no")){%><img src="${resource(dir:'/images/upload/imagesQuestion',file:image2)}" width="139" height="97" alt="<%=image2%>"/><%}%></td>
	  <td colspan="3"><%if(!image3.equals("no")){%><img src="${resource(dir:'/images/upload/imagesQuestion',file:image3)}" width="139" height="97" alt="<%=image3%>"/><%}%></td>
      <%--         No sabia que poern jajajaja --%>
      </tr>
      <tr>

      </tr>

      </table>


   <div id="next"> <g:link action="save" params="[counter:counter,question:question,idTest:idTest]">Siguiente Pregunta</g:link></div>
</body>
</html>