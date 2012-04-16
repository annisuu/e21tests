<%--
  Created by IntelliJ IDEA.
  User: Quaxar2
  Date: Apr 14, 2012
  Time: 2:03:18 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title></head>
  <body>
     Pregunta ${counter} :
  <%
  String image1=!question.image1.equals("")?question.image1:"space.jpg"
  String image2=!question.image2.equals("")?question.image2:"space.jpg"
  String image3=!question.image3.equals("")?question.image3:"space.jpg"
  %>
     <table width="483" height="248">
      <tr><td colspan="2">${question.questiontext}</td></tr>
      <tr><td>A)${question.answer1}</td><td><img src="${resource(dir:'/images/upload/imagesQuestion',file:image1)}" width="130" height="38" alt="<%=image1%>"/><td></tr>
      <tr><td>B)${question.answer2}</td><td><img src="${resource(dir:'/images/upload/imagesQuestion',file:image2)}" width="130" height="38" alt="<%=image2%>"/></td></tr>
      <tr><td>C)${question.answer3}</td><td><img src="${resource(dir:'/images/upload/imagesQuestion',file:image3)}" width="130" height="38" alt="<%=image3%>"/></td></tr>

      </table>


    <g:link action="save" params="[counter:counter,question:question,idTest:idTest]">Next question</g:link>
  </body>
</html>