

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title>
     <meta name="layout" content="mainInstruc" />
    <r:require module="export"/>
    <link rel="stylesheet" href="${resource(dir:'css',file:'export.css')}" />
  </head>
  <body>
 
  <table border="1">
    <tr><td colspan="3"><div>Exportar Resultados :</div><br><div><export:formats formats="['excel','pdf']" action="scoreR" params="[identifier:identifier,test:params.idT,user:params.idu,nameT:nameTest,nameU:nameUser,post:post]" />
</div></td></tr>
    <tr><td colspan="3"><b>${nameTest} : ${nameUser}</b></td></tr>
     <tr><td colspan="3"><b>CARGO : ${post}</b></td></tr>
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