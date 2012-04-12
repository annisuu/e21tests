

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstrutor" />
        <title>Create DoTest</title>
<resource:accordion skin="default" />

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">DoTest List</g:link></span>
        </div>
        <div class="body">
            <h1>Create DoTest</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
           
            <g:form action="save" method="post" enctype="multipart/form-data">
                <div class="dialog">
                    <table>
                        <tbody>
                        <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idArea">Id Area:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'idArea','errors')}">
                                      <select name="idArea" id="idArea">
                                      <g:each var="area" in ="${area}">
                                      <option  value="${area.id_area}">
                                        ${area.name_area}
                                      </option>
                                      </g:each>
                                      </select></td>
                          
                                <td valign="top" class="name">
                                    <label for="idSubject">Id Subject:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'idSubject','errors')}">
                                      <select name="idSubject" id="idSubject">
                                      <g:each var="subject" in ="${subject}">
                                      <option  value="${subject.id}">
                                        ${subject.name}
                                      </option>
                                      </g:each>
                                  </select>
                                  <input type="hidden" id="id_test" name="id_test" value="${fieldValue(bean:doTestInstance,field:'id_test')}"/>

                                </td>
                            </tr>
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameTest">Name Test:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'nameTest','errors')}">
                                    <input type="text" id="nameTest" name="nameTest" value="${fieldValue(bean:doTestInstance,field:'nameTest')}"/>
                                </td>
                            </tr>
                         </tbody>
                      </table>
                  <richui:accordion style="width: 500px;">
    <richui:accordionItem caption="Question1">
                 <table>
                        <tbody>

                                <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question1">Question1:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question1','errors')}">
                                    <input type="text" id="question1" name="question1" value="${fieldValue(bean:doTestInstance,field:'question1')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer1A">Answer1 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer1A','errors')}">
                                    <input type="text" id="answer1A" name="answer1A" value="${fieldValue(bean:doTestInstance,field:'answer1A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer1B">Answer1 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer1B','errors')}">
                                    <input type="text" id="answer1B" name="answer1B" value="${fieldValue(bean:doTestInstance,field:'answer1B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer1C">Answer1 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer1C','errors')}">
                                    <input type="text" id="answer1C" name="answer1C" value="${fieldValue(bean:doTestInstance,field:'answer1C')}"/>
                                </td>
                            </tr>
                              <tr class="prop">
                                <td valign="top" class="name">
                                <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image1A">Image1 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image1A','errors')}">
                                 <input type="file" id="image1A" name="image1A" width="250px">
                                    </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image1B">Image1 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image1B','errors')}">
                                     <input type="file" id="image1B" name="image1B" width="250px"></td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image1C">Image1 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image1C','errors')}">
                                <input type="file" id="image1C" name="image1C" width="250px">                                </td>
                            </tr>
                            <tr>
                            <td><label for="trueanswer1">Trueanswer1:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer1','errors')}">
                                    <input type="text" id="trueanswer1" name="trueanswer1" value="${fieldValue(bean:doTestInstance,field:'trueanswer1')}"/>
                                </td>
                            </tr>
                         </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question2">
                 <table>
                        <tbody>
                        <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question2">Question2:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question2','errors')}">
                                    <input type="text" id="question2" name="question2" value="${fieldValue(bean:doTestInstance,field:'question2')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer2A">Answer2 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer2A','errors')}">
                                    <input type="text" id="answer2A" name="answer2A" value="${fieldValue(bean:doTestInstance,field:'answer2A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer2B">Answer2 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer2B','errors')}">
                                    <input type="text" id="answer2B" name="answer2B" value="${fieldValue(bean:doTestInstance,field:'answer2B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer2C">Answer2 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer2C','errors')}">
                                    <input type="text" id="answer2C" name="answer2C" value="${fieldValue(bean:doTestInstance,field:'answer2C')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image2A">Image2 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image2A','errors')}">
                                 <input type="file" id="image2A" name="image2A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image2B">Image2 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image2B','errors')}">
                               <input type="file" id="image2B" name="image2B" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image2C">Image2 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image2C','errors')}">
                                  <input type="file" id="image2C" name="image2C" width="250px">
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer2">Trueanswer2:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer2','errors')}">
                                    <input type="text" id="trueanswer2" name="trueanswer2" value="${fieldValue(bean:doTestInstance,field:'trueanswer2')}"/>
                                </td>
                            </tr>
                             </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question3">
                 <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question3">Question3:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question3','errors')}">
                                    <input type="text" id="question3" name="question3" value="${fieldValue(bean:doTestInstance,field:'question3')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer3A">Answer3 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer3A','errors')}">
                                    <input type="text" id="answer3A" name="answer3A" value="${fieldValue(bean:doTestInstance,field:'answer3A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer3B">Answer3 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer3B','errors')}">
                                    <input type="text" id="answer3B" name="answer3B" value="${fieldValue(bean:doTestInstance,field:'answer3B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer3C">Answer3 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer3C','errors')}">
                                    <input type="text" id="answer3C" name="answer3C" value="${fieldValue(bean:doTestInstance,field:'answer3C')}"/>
                                </td>
                            </tr>
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image3A">Image3 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image3A','errors')}">
                                 <input type="file" id="image3A" name="image3A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image3B">Image3 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image3B','errors')}">
                                  <input type="file" id="image3B" name="image3B" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image3C">Image3 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image3C','errors')}">
                                  <input type="file" id="image3C" name="image3C" width="250px">
                                </td>
                            </tr>
                              <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer3">Trueanswer3:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer3','errors')}">
                                    <input type="text" id="trueanswer3" name="trueanswer3" value="${fieldValue(bean:doTestInstance,field:'trueanswer3')}"/>
                                </td>
                            </tr>
                               </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question4">
                 <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question4">Question4:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question4','errors')}">
                                    <input type="text" id="question4" name="question4" value="${fieldValue(bean:doTestInstance,field:'question4')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer4A">Answer4 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer4A','errors')}">
                                    <input type="text" id="answer4A" name="answer4A" value="${fieldValue(bean:doTestInstance,field:'answer4A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer4B">Answer4 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer4B','errors')}">
                                    <input type="text" id="answer4B" name="answer4B" value="${fieldValue(bean:doTestInstance,field:'answer4B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer4C">Answer4 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer4C','errors')}">
                                    <input type="text" id="answer4C" name="answer4C" value="${fieldValue(bean:doTestInstance,field:'answer4C')}"/>
                                </td>
                            </tr>
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image4A">Image4 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image4A','errors')}">
                                  <input type="file" id="image4A" name="image4A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image4B">Image4 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image4B','errors')}">
                                  <input type="file" id="image4B" name="image4B" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image4C">Image4 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image4C','errors')}">
                                  <input type="file" id="image4C" name="image4C" width="250px">
                                </td>
                            </tr>
                              <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer4">Trueanswer4:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer4','errors')}">
                                    <input type="text" id="trueanswer4" name="trueanswer4" value="${fieldValue(bean:doTestInstance,field:'trueanswer4')}"/>
                                </td>
                            </tr>

                              </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question5">
                 <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question5">Question5:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question5','errors')}">
                                    <input type="text" id="question5" name="question5" value="${fieldValue(bean:doTestInstance,field:'question5')}"/>
                                </td>
                            </tr>
                              <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer5A">Answer5 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer5A','errors')}">
                                    <input type="text" id="answer5A" name="answer5A" value="${fieldValue(bean:doTestInstance,field:'answer5A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer5B">Answer5 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer5B','errors')}">
                                    <input type="text" id="answer5B" name="answer5B" value="${fieldValue(bean:doTestInstance,field:'answer5B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer5C">Answer5 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer5C','errors')}">
                                    <input type="text" id="answer5C" name="answer5C" value="${fieldValue(bean:doTestInstance,field:'answer5C')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image5A">Image5 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image5A','errors')}">
                                  <input type="file" id="image5A" name="image5A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image5B">Image5 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image5B','errors')}">
                                  <input type="file" id="image5B" name="image5B" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image5C">Image5 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image5C','errors')}">
                                  <input type="file" id="image5C" name="image5C" width="250px">
                                </td>
                            </tr>
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer5">Trueanswer5:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer5','errors')}">
                                    <input type="text" id="trueanswer5" name="trueanswer5" value="${fieldValue(bean:doTestInstance,field:'trueanswer5')}"/>
                                </td>
                            </tr>
                          </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question6">
                 <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question6">Question6:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question6','errors')}">
                                    <input type="text" id="question6" name="question6" value="${fieldValue(bean:doTestInstance,field:'question6')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer6A">Answer6 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer6A','errors')}">
                                    <input type="text" id="answer6A" name="answer6A" value="${fieldValue(bean:doTestInstance,field:'answer6A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer6B">Answer6 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer6B','errors')}">
                                    <input type="text" id="answer6B" name="answer6B" value="${fieldValue(bean:doTestInstance,field:'answer6B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer6C">Answer6 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer6C','errors')}">
                                    <input type="text" id="answer6C" name="answer6C" value="${fieldValue(bean:doTestInstance,field:'answer6C')}"/>
                                </td>
                            </tr>
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image6A">Image6 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image6A','errors')}">
                                  <input type="file" id="image6A" name="image6A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image6B">Image6 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image6B','errors')}">
                                  <input type="file" id="image6B" name="image6B" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image6C">Image6 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image6C','errors')}">
                                  <input type="file" id="image6C" name="image6C" width="250px">
                                </td>
                            </tr>
                          <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer6">Trueanswer6:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer6','errors')}">
                                    <input type="text" id="trueanswer6" name="trueanswer6" value="${fieldValue(bean:doTestInstance,field:'trueanswer6')}"/>
                                </td>
                            </tr>
                          </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question7">
                 <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question7">Question7:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question7','errors')}">
                                    <input type="text" id="question7" name="question7" value="${fieldValue(bean:doTestInstance,field:'question7')}"/>
                                </td>
                            </tr>
                                 <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer7A">Answer7 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer7A','errors')}">
                                    <input type="text" id="answer7A" name="answer7A" value="${fieldValue(bean:doTestInstance,field:'answer7A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer7B">Answer7 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer7B','errors')}">
                                    <input type="text" id="answer7B" name="answer7B" value="${fieldValue(bean:doTestInstance,field:'answer7B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer7C">Answer7 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer7C','errors')}">
                                    <input type="text" id="answer7C" name="answer7C" value="${fieldValue(bean:doTestInstance,field:'answer7C')}"/>
                                </td>
                            </tr>
                         <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image7A">Image7 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image7A','errors')}">
                                  <input type="file" id="image7A" name="image7A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image7B">Image7 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image7B','errors')}">
                                  <input type="file" id="image7B" name="image7B" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image7C">Image7 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image7C','errors')}">
                                  <input type="file" id="image7C" name="image7C" width="250px">
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer7">Trueanswer7:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer7','errors')}">
                                    <input type="text" id="trueanswer7" name="trueanswer7" value="${fieldValue(bean:doTestInstance,field:'trueanswer7')}"/>
                                </td>
                            </tr>
                          </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question8">
                 <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question8">Question8:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question8','errors')}">
                                    <input type="text" id="question8" name="question8" value="${fieldValue(bean:doTestInstance,field:'question8')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer8A">Answer8 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer8A','errors')}">
                                    <input type="text" id="answer8A" name="answer8A" value="${fieldValue(bean:doTestInstance,field:'answer8A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer8B">Answer8 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer8B','errors')}">
                                    <input type="text" id="answer8B" name="answer8B" value="${fieldValue(bean:doTestInstance,field:'answer8B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer8C">Answer8 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer8C','errors')}">
                                    <input type="text" id="answer8C" name="answer8C" value="${fieldValue(bean:doTestInstance,field:'answer8C')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image8A">Image8 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image8A','errors')}">
                                  <input type="file" id="image8A" name="image8A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image8B">Image8 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image8B','errors')}">
                                  <input type="file" id="image8B" name="image8B" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image8C">Image8 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image8C','errors')}">
                                  <input type="file" id="image8C" name="image8C" width="250px">
                                </td>
                            </tr>
                           <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer8">Trueanswer8:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer8','errors')}">
                                    <input type="text" id="trueanswer8" name="trueanswer8" value="${fieldValue(bean:doTestInstance,field:'trueanswer8')}"/>
                                </td>
                            </tr>
                          </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question9">
                 <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question9">Question9:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question9','errors')}">
                                    <input type="text" id="question9" name="question9" value="${fieldValue(bean:doTestInstance,field:'question9')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer9A">Answer9 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer9A','errors')}">
                                    <input type="text" id="answer9A" name="answer9A" value="${fieldValue(bean:doTestInstance,field:'answer9A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer9B">Answer9 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer9B','errors')}">
                                    <input type="text" id="answer9B" name="answer9B" value="${fieldValue(bean:doTestInstance,field:'answer9B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer9C">Answer9 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer9C','errors')}">
                                    <input type="text" id="answer9C" name="answer9C" value="${fieldValue(bean:doTestInstance,field:'answer9C')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image9A">Image9 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image9A','errors')}">
                                  <input type="file" id="image9A" name="image9A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image9B">Image9 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image9B','errors')}">
                                  <input type="file" id="image9B" name="image9B" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image9C">Image9 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image9C','errors')}">
                                  <input type="file" id="image9C" name="image9C" width="250px">
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer9">Trueanswer9:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer9','errors')}">
                                    <input type="text" id="trueanswer9" name="trueanswer9" value="${fieldValue(bean:doTestInstance,field:'trueanswer9')}"/>
                                </td>
                            </tr>
                          </tbody>
                      </table>
      </richui:accordionItem>
               <richui:accordionItem caption="Question10">
                 <table>
                        <tbody>
                         <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="question10">Question10:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'question10','errors')}">
                                    <input type="text" id="question10" name="question10" value="${fieldValue(bean:doTestInstance,field:'question10')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image10A">Image10 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image10A','errors')}">
                                <input type="file" id="image10A" name="image10A" width="250px">
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image10B">Image10 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image10B','errors')}">
                                  <input type="file" id="image10B" name="image10B" width="250px">                                 </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image10C">Image10 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'image10C','errors')}">
                               <input type="file" id="image10C" name="image10C" width="250px">
                                </td>
                            </tr>

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueanswer10">Trueanswer10:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'trueanswer10','errors')}">
                                    <input type="text" id="trueanswer10" name="trueanswer10" value="${fieldValue(bean:doTestInstance,field:'trueanswer10')}"/>
                                </td>
                            </tr>

                        <tr class="prop">

                                <td valign="top" class="name">
                                    <label for="answer10A">Answer10 A:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer10A','errors')}">
                                    <input type="text" id="answer10A" name="answer10A" value="${fieldValue(bean:doTestInstance,field:'answer10A')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer10B">Answer10 B:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer10B','errors')}">
                                    <input type="text" id="answer10B" name="answer10B" value="${fieldValue(bean:doTestInstance,field:'answer10B')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="answer10C">Answer10 C:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:doTestInstance,field:'answer10C','errors')}">
                                    <input type="text" id="answer10C" name="answer10C" value="${fieldValue(bean:doTestInstance,field:'answer10C')}"/>
                                </td>
                            </tr>


               </tbody>
                    </table>
                  </richui:accordionItem>
                     </richui:accordion>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
