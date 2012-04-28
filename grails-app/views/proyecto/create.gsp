

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
         <meta name="layout" content="mainAdmin" />
        <title>agregar proyecto</title>

        <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
       <resource:autoComplete skin="default" />

    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="list" action="list">Lista de Proyectos</g:link></span>
        </div>
        <div class="body">
            <h1>agregar proyecto</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                             <TR><TD>Buscar </TD>
                          <td>
                           <!-- <richui:autoComplete name="user" action="${createLinkTo('dir': 'proyecto/searchAJAX')}" />  -->
                                 <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'proyecto/searchAJAX')}"
                                  onItemSelect="document.location.href = '${createLinkTo(dir: 'proyecto/edit')}/' + id;" />
                            <!--       <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'proyecto/searchAJAX')}" />    -->
                          </td></TR>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameProyecto">Nombre de Proyecto:(Solo Mayuscula)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:proyectoInstance,field:'nameProyecto','errors')}">
                                    <input type="text" id="nameProyecto" name="nameProyecto" value="${fieldValue(bean:proyectoInstance,field:'nameProyecto')}"/>
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
 $('#nameProyecto').alpha({allcaps:true,allow:' '});
             </g:javascript>


    </body>
</html>
