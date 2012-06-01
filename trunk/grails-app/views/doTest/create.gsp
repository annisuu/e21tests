
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>crear test</title>
<resource:accordion skin="default" />
<g:javascript library="prototype" />
      <style type="text/css">
	/* Character Count styles */
form{width:650px;}
label{                       
	display:block;
	font-size:14px;
	}

form div{position:relative;}
form .counter{

	font-size:14px;
	font-weight:bold;
	color:#ffffff;
	}
form .warning{color:#600;}
form .exceeded{color:#e00;}
</style>
      <g:javascript library="charCount" ></g:javascript>
  
      
    </head>
    <body>
           <div class="nav">

            <span class="menuButton"><g:link class="list" controller="test" action="list">lista de test</g:link></span>
        </div>
            <div class="body">
            <h1>crear test</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>

            <g:form action="save" method="post" enctype="multipart/form-data">
               <div class="dialog">
                 <richui:accordion style="width: 650px;">
               <richui:accordionItem caption="DATOS DEL TEST">

                    <table style="width: 650px;">
                        <tbody>


                        <tr class="prop">
                                <td valign="top" class="name">
                                <label for="nameTest">Nombre del Test:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'nameTest','errors')}" colspan="3">
                                <input type="text" id="nameTest" name="nameTest" value="${fieldValue(bean:doTestInstance,field:'nameTest')}"/>
                                </td>
                            </tr>
                       <tr class="prop">
                       <td valign="top" class="name">
                           <label for="idArea">Area:</label>
                       </td>
                       <td valign="top" class="value <%println errorArea.toString() %>">
                             <select name="idArea" id="idArea"  onchange="${remoteFunction(controller: 'doTest', action: 'consultarSubject', update: [success: 'idSubject', failure: 'error'], params: '\'id_area=\'+this.value')}">
                             <option value="">SELECCIONA EL AREA</option>
                             <g:each var="area" in ="${area}">
                             <option  value="${area.id_area}" <%if(params.idArea==area.id_area.toString()){println "selected"}%>>
                              ${area.name_area}
                             </option>
                             </g:each>
                             </select></td>
                             </tr>

                        <tr>
                         <td valign="top" class="name">
                                    <label for="idSubject">Tematica:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'idSubject','errors')}">
                                <div id="idSubject">
                          <select name="idSubject">
                            <option value="">SELECCIONE</option>
                            <g:each var="subject" in="${subject}">
                              <option value="${subject.id_subject}"<%if(doTestInstance.idSubject==subject.id_subject.toString()){println "selected"}%>>${subject.name_subject}</option>

                            </g:each>
                          </select>
                        </div>
                                  <input type="hidden" id="id_test" name="id_test" value="${fieldValue(bean:doTestInstance,field:'id_test')}"/>
                                 </td>
                            </tr>
                      </tbody>
                      </table>
               </richui:accordionItem>
    <richui:accordionItem caption="Pregunta 1">
        <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question1','errors')}" colspan="5">
                           <label for="question1">Texto de la pregunta: </label><br>
                                    <textarea id="question1" name="question1"  maxlength="200">${fieldValue(bean:doTestInstance,field:'question1')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
                           </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer1A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer1A','errors')}">
                                  <input type="text" maxlength="100" id="answer1A" name="answer1A"   value="${fieldValue(bean:doTestInstance,field:'answer1A')}"/>

                                </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image1A','errors')}">
                               <input type="file" id="image1A" name="image1A" width="250px">
                              </td>
                              <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer1','errors')}">
                                		<input type="radio" id="trueanswer1" name="trueanswer1" value="A" <%if(doTestInstance.trueanswer1=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer1B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer1B','errors')}">
                                    <input type="text" maxlength="100" id="answer1B" name="answer1B"  value="${fieldValue(bean:doTestInstance,field:'answer1B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image1B','errors')}">
                                     <input type="file" id="image1B" name="image1B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer1','errors')}">
                                 <input type="radio" id="trueanswer1" name="trueanswer1" value="B" <%if(doTestInstance.trueanswer1=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer1C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer1C','errors')}">
                                    <input type="text"  maxlength="100" id="answer1C" name="answer1C"  value="${fieldValue(bean:doTestInstance,field:'answer1C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image1C','errors')}">
                                <input type="file" id="image1C" name="image1C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer1','errors')}">
                                  <input type="radio" id="trueanswer1" name="trueanswer1" value="C" <%if(doTestInstance.trueanswer1=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Pregunta 2">
               <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question2','errors')}" colspan="5">
                           <label for="question2">Texto de la pregunta: </label><br>
                                    <textarea id="question2" name="question2" maxlength="200">${fieldValue(bean:doTestInstance,field:'question2')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer2A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer2A','errors')}">
                                  <input type="text" maxlength="100" id="answer2A" name="answer2A" value="${fieldValue(bean:doTestInstance,field:'answer2A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image2A','errors')}">
                               <input type="file" id="image2A" name="image2A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer2','errors')}">
                                		<input type="radio" id="trueanswer2" name="trueanswer2" value="A" <%if(doTestInstance.trueanswer2=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer2B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer2B','errors')}">
                                    <input type="text" maxlength="100" id="answer2B" name="answer2B" value="${fieldValue(bean:doTestInstance,field:'answer2B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image2B','errors')}">
                                     <input type="file" id="image2B" name="image2B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer2','errors')}">
                                 <input type="radio" id="trueanswer2" name="trueanswer2" value="B" <%if(doTestInstance.trueanswer2=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer2C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer2C','errors')}">
                                    <input type="text" maxlength="100"  id="answer2C" name="answer2C" value="${fieldValue(bean:doTestInstance,field:'answer2C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image1C','errors')}">
                                <input type="file" id="image2C" name="image2C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer2','errors')}">
                                  <input type="radio" id="trueanswer2" name="trueanswer2" value="C" <%if(doTestInstance.trueanswer2=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Pregunta 3">
              <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question3','errors')}" colspan="5">
                           <label for="question3">Texto de la pregunta: </label><br>
                                    <textarea id="question3" name="question3" maxlength="200">${fieldValue(bean:doTestInstance,field:'question3')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer3A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer3A','errors')}">
                                  <input type="text" maxlength="100" id="answer3A" name="answer3A" value="${fieldValue(bean:doTestInstance,field:'answer3A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image3A','errors')}">
                               <input type="file" id="image3A" name="image3A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer3','errors')}">
                                		<input type="radio" id="trueanswer3" name="trueanswer3" value="A" <%if(doTestInstance.trueanswer3=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer3B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer3B','errors')}">
                                    <input type="text" maxlength="100" id="answer3B" name="answer3B" value="${fieldValue(bean:doTestInstance,field:'answer3B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image3B','errors')}">
                                     <input type="file" id="image3B" name="image3B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer3','errors')}">
                                 <input type="radio" id="trueanswer3" name="trueanswer3" value="B" <%if(doTestInstance.trueanswer3=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer3C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer3C','errors')}">
                                    <input type="text" maxlength="100" id="answer3C" name="answer3C" value="${fieldValue(bean:doTestInstance,field:'answer3C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image3C','errors')}">
                                <input type="file" id="image3C" name="image3C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer3','errors')}">
                                  <input type="radio" id="trueanswer3" name="trueanswer3" value="C" <%if(doTestInstance.trueanswer3=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Pregunta 4">
                <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question4','errors')}" colspan="5">
                           <label for="question4">Texto de la pregunta: </label><br>
                                    <textarea id="question4" name="question4" maxlength="200">${fieldValue(bean:doTestInstance,field:'question4')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer4A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer4A','errors')}">
                                  <input type="text" maxlength="100" id="answer4A" name="answer4A" value="${fieldValue(bean:doTestInstance,field:'answer4A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image4A','errors')}">
                               <input type="file" id="image4A" name="image4A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer4','errors')}">
                                		<input type="radio" id="trueanswer4" name="trueanswer4" value="A" <%if(doTestInstance.trueanswer4=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer4B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer4B','errors')}">
                                    <input type="text" maxlength="100" id="answer4B" name="answer4B" value="${fieldValue(bean:doTestInstance,field:'answer4B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image4B','errors')}">
                                     <input type="file" id="image4B" name="image4B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer4','errors')}">
                                 <input type="radio" id="trueanswer4" name="trueanswer4" value="B" <%if(doTestInstance.trueanswer4=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer4C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer4C','errors')}">
                                    <input type="text" maxlength="100" id="answer4C" name="answer4C" value="${fieldValue(bean:doTestInstance,field:'answer4C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image3C','errors')}">
                                <input type="file" id="image4C" name="image4C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer4','errors')}">
                                  <input type="radio" id="trueanswer4" name="trueanswer4" value="C" <%if(doTestInstance.trueanswer4=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption=" Pregunta 5">
               <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question5','errors')}" colspan="5">
                           <label for="question5">Texto de la pregunta: </label><br>
                                    <textarea id="question5" name="question5" maxlength="200" >${fieldValue(bean:doTestInstance,field:'question5')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer5A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer5A','errors')}">
                                  <input type="text" maxlength="100" id="answer5A" name="answer5A" value="${fieldValue(bean:doTestInstance,field:'answer5A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image5A','errors')}">
                               <input type="file" id="image5A" name="image5A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer5','errors')}">
                                		<input type="radio" id="trueanswer5" name="trueanswer5" value="A" <%if(doTestInstance.trueanswer5=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer5B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer5B','errors')}">
                                    <input type="text" maxlength="100"  id="answer5B" name="answer5B" value="${fieldValue(bean:doTestInstance,field:'answer5B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image5B','errors')}">
                                     <input type="file" id="image5B" name="image5B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer5','errors')}">
                                 <input type="radio" id="trueanswer5" name="trueanswer5" value="B" <%if(doTestInstance.trueanswer5=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer5C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer5C','errors')}">
                                    <input type="text" maxlength="100"  id="answer5C" name="answer5C" value="${fieldValue(bean:doTestInstance,field:'answer5C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image5C','errors')}">
                                <input type="file" id="image5C" name="image5C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer5','errors')}">
                                  <input type="radio" id="trueanswer5" name="trueanswer5" value="C" <%if(doTestInstance.trueanswer5=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Pregunta 6">
                <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question6','errors')}" colspan="6">
                           <label for="question6">Texto de la pregunta: </label><br>
                                    <textarea id="question6" name="question6" maxlength="200">${fieldValue(bean:doTestInstance,field:'question6')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer6A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer6A','errors')}">
                                  <input type="text" maxlength="100"id="answer6A" name="answer6A" value="${fieldValue(bean:doTestInstance,field:'answer6A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image6A','errors')}">
                               <input type="file" id="image6A" name="image6A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer6','errors')}">
                                		<input type="radio" id="trueanswer6" name="trueanswer6" value="A" <%if(doTestInstance.trueanswer6=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer6B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer6B','errors')}">
                                    <input type="text" maxlength="100" id="answer6B" name="answer6B" value="${fieldValue(bean:doTestInstance,field:'answer6B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image6B','errors')}">
                                     <input type="file" id="image6B" name="image6B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer6','errors')}">
                                 <input type="radio" id="trueanswer6" name="trueanswer6" value="B" <%if(doTestInstance.trueanswer6=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer6C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer6C','errors')}">
                                    <input type="text" maxlength="100"  id="answer6C" name="answer6C" value="${fieldValue(bean:doTestInstance,field:'answer6C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image6C','errors')}">
                                <input type="file" id="image6C" name="image6C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer6','errors')}">
                                  <input type="radio" id="trueanswer6" name="trueanswer6" value="C" <%if(doTestInstance.trueanswer6=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Pregunta 7">
                 <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question7','errors')}" colspan="5">
                           <label for="question7">Texto de la pregunta: </label><br>
                                    <textarea id="question7" name="question7" maxlength="200">${fieldValue(bean:doTestInstance,field:'question7')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer7A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer7A','errors')}">
                                  <input type="text"  maxlength="100" id="answer7A" name="answer7A" value="${fieldValue(bean:doTestInstance,field:'answer7A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image7A','errors')}">
                               <input type="file" id="image7A" name="image7A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer7','errors')}">
                                		<input type="radio" id="trueanswer7" name="trueanswer7" value="A" <%if(doTestInstance.trueanswer7=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer7B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer7B','errors')}">
                                    <input type="text" maxlength="100" id="answer7B" name="answer7B" value="${fieldValue(bean:doTestInstance,field:'answer7B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image7B','errors')}">
                                     <input type="file" id="image7B" name="image7B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer7','errors')}">
                                 <input type="radio" id="trueanswer7" name="trueanswer7" value="B" <%if(doTestInstance.trueanswer7=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer7C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer7C','errors')}">
                                    <input type="text" maxlength="100" id="answer7C" name="answer7C" value="${fieldValue(bean:doTestInstance,field:'answer7C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image7C','errors')}">
                                <input type="file" id="image7C" name="image7C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer7','errors')}">
                                  <input type="radio" id="trueanswer7" name="trueanswer7" value="C" <%if(doTestInstance.trueanswer7=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Pregunta 8">
                 <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question8','errors')}" colspan="5">
                           <label for="question8">Texto de la pregunta: </label><br>
                                    <textarea id="question8" name="question8" maxlength="200" >${fieldValue(bean:doTestInstance,field:'question8')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer8A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer8A','errors')}">
                                  <input type="text" maxlength="100" id="answer8A" name="answer8A" value="${fieldValue(bean:doTestInstance,field:'answer8A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image8A','errors')}">
                               <input type="file" id="image8A" name="image8A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer8','errors')}">
                                		<input type="radio" id="trueanswer8" name="trueanswer8" value="A" <%if(doTestInstance.trueanswer8=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer8B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer8B','errors')}">
                                    <input type="text"maxlength="100"  id="answer8B" name="answer8B" value="${fieldValue(bean:doTestInstance,field:'answer8B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image8B','errors')}">
                                     <input type="file" id="image8B" name="image8B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer8','errors')}">
                                 <input type="radio" id="trueanswer8" name="trueanswer8" value="B" <%if(doTestInstance.trueanswer8=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer8C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer8C','errors')}">
                                    <input type="text" maxlength="100" id="answer8C" name="answer8C" value="${fieldValue(bean:doTestInstance,field:'answer8C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image8C','errors')}">
                                <input type="file" id="image8C" name="image8C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer8','errors')}">
                                  <input type="radio" id="trueanswer8" name="trueanswer8" value="C" <%if(doTestInstance.trueanswer8=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Pregunta 9">
                  <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question9','errors')}" colspan="5">
                           <label for="question9">Texto de la pregunta: </label><br>
                                    <textarea id="question9" name="question9" maxlength="200" >${fieldValue(bean:doTestInstance,field:'question9')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer9A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer9A','errors')}">
                                  <input type="text" maxlength="100" id="answer9A" name="answer9A" value="${fieldValue(bean:doTestInstance,field:'answer9A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image9A','errors')}">
                               <input type="file" id="image9A" name="image9A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer9','errors')}">
                                		<input type="radio" id="trueanswer9" name="trueanswer9" value="A" <%if(doTestInstance.trueanswer9=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer9B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer9B','errors')}">
                                    <input type="text" maxlength="100" id="answer9B" name="answer9B" value="${fieldValue(bean:doTestInstance,field:'answer9B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image9B','errors')}">
                                     <input type="file" id="image9B" name="image9B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer9','errors')}">
                                 <input type="radio" id="trueanswer9" name="trueanswer9" value="B" <%if(doTestInstance.trueanswer9=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer9C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer9C','errors')}">
                                    <input type="text" maxlength="100" id="answer9C" name="answer9C" value="${fieldValue(bean:doTestInstance,field:'answer9C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image9C','errors')}">
                                <input type="file" id="image9C" name="image9C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer9','errors')}">
                                  <input type="radio" id="trueanswer9" name="trueanswer9" value="C" <%if(doTestInstance.trueanswer9=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Pregunta 10">
                  <table width="464">
                              <tbody>
                                <tr class="prop">

                          <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question10','errors')}" colspan="5">
                           <label for="question10">Texto de la pregunta: </label><br>
                                    <textarea id="question10" name="question10" maxlength="200" >${fieldValue(bean:doTestInstance,field:'question10')}</textarea>
                                </td>

                          </tr>
                          <tr>
                          <td colspan="2"><div align="center">Respuestas</div></td>
                          <td colspan="2"><div align="center">Im&aacute;genes</div></td>
                          <td width="183">Respuesta Correcta</td>
              </tr>
                            <tr class="prop">
                                <td width="16" valign="top" class="name">
                                  <label for="answer10A">A)</label>
                                </td>
                                <td width="144" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer10A','errors')}">
                                  <input type="text"  maxlength="100" id="answer10A" name="answer10A" value="${fieldValue(bean:doTestInstance,field:'answer10A')}"/>
                              </td>

                             <td  colspan="2" valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image10A','errors')}">
                               <input type="file" id="image10A" name="image10A" width="250px">
                              </td>
<td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer10','errors')}">
                                		<input type="radio" id="trueanswer10" name="trueanswer10" value="A" <%if(doTestInstance.trueanswer10=="A") println "checked"%>>
                               		 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer10B">B)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer10B','errors')}">
                                    <input type="text" maxlength="100" id="answer10B" name="answer10B" value="${fieldValue(bean:doTestInstance,field:'answer10B')}"/>
                                </td>

                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image10B','errors')}">
                                     <input type="file" id="image10B" name="image10B" width="250px"></td>
                                      <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer10','errors')}">
                                 <input type="radio" id="trueanswer10" name="trueanswer10" value="B" <%if(doTestInstance.trueanswer10=="B") println "checked"%>>

                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer10C">C)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer10C','errors')}">
                                    <input type="text" maxlength="100" id="answer10C" name="answer10C" value="${fieldValue(bean:doTestInstance,field:'answer10C')}"/>
                                </td>


                                <td valign="top" colspan="2" class="value ${hasErrors(bean:doTestInstance,field:'image10C','errors')}">
                                <input type="file" id="image10C" name="image10C" width="250px">                                </td>
                                 <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer10','errors')}">
                                  <input type="radio" id="trueanswer10" name="trueanswer10" value="C" <%if(doTestInstance.trueanswer10=="C") println "checked"%>>
                                </td>
                           </tr>

                         </tbody>
                      </table>
                  </richui:accordionItem>
                     </richui:accordion>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" "/></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
