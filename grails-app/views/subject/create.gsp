

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainInstruc" />
        <title>agregar tematica</title>
         <!-- se manda a llamar el jscript desde la ruta dode se encuentra  -->
       <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
       <resource:autoComplete skin="default" />
      
    </head>
    <body>
        <div class="nav">
             <% if(session.user?.id_rol==1)
        {%>
            <span class="menuButton"><g:link class="home" controller="proyecto" action="create">Regresar como administrador</g:link></span>
        <%}%>
            <span class="menuButton"><g:link class="list" action="list">lista de tematicas</g:link></span>
        </div>
        <div class="body">
            <h1>agregar tematica</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                             <TR><TD>Buscar </TD>
                          <td>
                           <!-- <richui:autoComplete name="user" action="${createLinkTo('dir': 'subject/searchAJAX')}" />  -->
                                 <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'subject/searchAJAX')}"
                                  onItemSelect="document.location.href = '${createLinkTo(dir: 'subject/edit')}/' + id;" />
                            <!--       <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'subject/searchAJAX')}" />    -->
                          </td></TR>



                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameSubject">Nombre de la Tematica:(SOLO MAYUSCULA)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:subjectInstance,field:'nameSubject','errors')}">
                                    <input type="text" id="nameSubject" name="nameSubject" value="${fieldValue(bean:subjectInstance,field:'nameSubject')}"/>
                                </td>
                            </tr>


                            <tr class="prop">
                            <td valign="top" class="name">
                            <label>Area:</label>
                            </td>
                            <td valign="top" class="value ${hasErrors(bean:subjectInstance,field:'idArea','errors')}">
                            <select name="idArea" id="idarea">
                               <option value="">SELECCIONA EL AREA</option>
                            <g:each var="c" in="${area}" >
                            <option value="${c.id_area}" <% if(subjectInstance.idArea.toString().equals(c.id_area.toString())){ println "selected"}%>>${c.name_area}</option>
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
            <!--    // se abre el script para hacer referencia al campo que se valida  -->
        <g:javascript>
     $('#nameSubject').alpha({allcaps:true,allow:' '});
                 </g:javascript>

    </body>
</html>
