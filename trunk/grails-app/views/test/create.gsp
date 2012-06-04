<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>agregar  test</title>

      <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
      <resource:autoComplete skin="default" />
      <resource:autoComplete skin="default" />

    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="list" action="list">lista de test</g:link></span>
        </div>
        <div class="body">
            <h1>agregar test</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                              <TR><TD>Buscar </TD>
                          <td>
                           <!-- <richui:autoComplete name="user" action="${createLinkTo('dir': 'test/searchAJAX')}" />  -->
                                 <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'test/searchAJAX')}"
                                  onItemSelect="document.location.href = '${createLinkTo(dir: 'test/edit')}/' + id;" />
                            <!--       <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'test/searchAJAX')}" />    -->
                          </td></TR>


                          <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameTest">Nombre de Test:(Solo Mayusculas)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:testInstance,field:'nameTest','errors')}">
                                    <input type="text" id="nameTest" name="nameTest" value="${fieldValue(bean:testInstance,field:'nameTest')}"/>
                                </td>
                            </tr>




                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idSubject">Tematica:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:testInstance,field:'idSubject','errors')}">
                                    <!--<input type="text" id="idSubject" name="idSubject" value="${fieldValue(bean:testInstance,field:'idSubject')}"/>-->
                                   <select name="idSubject" id="idSubject">
                                   <option value="">SELECCIONA LA TEMATICA</option>
                                      <g:each var="subject" in ="${subject}">
                                      <option  value="${subject.id}" <% if(testInstance.idSubject.toString().equals(subject.id_subject.toString())){ println "selected"}%>>${subject.name}
                                      </option>
                                      </g:each>
                                      </select>
                                </td>
                            </tr>

                        
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
     <g:javascript>
$('#nameTest').alpha({allcaps:true,allow:' '});


</g:javascript>
    </body>
</html>
