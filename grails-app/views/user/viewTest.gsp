<%--
  Created by IntelliJ IDEA.
  User: Quaxar2
  Date: May 30, 2012
  Time: 12:46:53 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title>
     <meta name="layout" content="mainInstruc" />
  </head>
  <body>
 
  <table border="1">
       <g:each in="${examen}" status="i" var="examen">
    <tr>
         
      <td colspan="3">Pregunta ${examen.numberq}:</td>
      </tr>
      <tr> <td colspan="3">${examen.questiontext}</td></tr>
      <tr <%if(resultados[i].score=="1" && resultados[i].answer=="A" ){println "bgcolor='#7CAF5E'"} else {if(resultados[i].score=="0" && resultados[i].answer=="A"){println "bgcolor='#C03D3D'" }}%>>
      <td>A)</td>
      <td>${examen.answer1}</td>
       <td><%if(resultados[i].answer=="A"){println "RESPUESTA DEL USUARIO"}else{println "&nbsp;"}%></td>
      </tr>
      <tr <%if(resultados[i].score=="1" && resultados[i].answer=="B" ){println "bgcolor='#7CAF5E'"} else {if(resultados[i].score=="0" && resultados[i].answer=="B"){println "bgcolor='#C03D3D'" }}%>>
      <td>B)</td>
      <td>${examen.answer2}</td>
       <td><%if(resultados[i].answer=="B"){println "RESPUESTA DEL USUARIO"}else{println "&nbsp;"}%></td>
      </tr>
      <tr <%if(resultados[i].score=="1" && resultados[i].answer=="C" ){println "bgcolor='#7CAF5E'"}else {if(resultados[i].score=="0" && resultados[i].answer=="C"){println "bgcolor='#C03D3D'" }}%>>
      <td>C)</td>
      <td>${examen.answer3}</td>
       <td><%if(resultados[i].answer=="C"){println "RESPUESTA DEL USUARIO"}else{println "&nbsp;"}%></td>

      </tr>
      </g:each>

  </table>


  </body>
</html>