

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
       <meta name="layout" content="mainAdmin" />
        <title>Crear Rol</title>
      
      <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
      <resource:autoComplete skin="default" />


    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Lista de Roles</g:link></span>
        </div>
        <div class="body">
            <h1>Create Rol</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>

            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                          <TR><TD>Buscar </TD>
                          <td>
                           <!-- <richui:autoComplete name="user" action="${createLinkTo('dir': 'rol/searchAJAX')}" />  -->
                                 <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'rol/searchAJAX')}"
                                  onItemSelect="document.location.href = '${createLinkTo(dir: 'rol/edit')}/' + id;" />
                            <!--       <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'rol/searchAJAX')}" />    -->
                          </td></TR>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameRol">Nombre Rol(Solo Maysculas):</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:rolInstance,field:'nameRol','errors')}">
                                    <input type="text" id="nameRol" name="nameRol" value="${fieldValue(bean:rolInstance,field:'nameRol')}"/>
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
  $('#nameRol').alpha({allcaps:true,allow:' '});
                 </g:javascript>


    </body>
</html>
