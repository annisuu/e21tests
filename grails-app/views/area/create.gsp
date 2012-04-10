
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="mainAdmin" />
        <title>Create Area</title>
      <div id="menu">
    
      <g:if test="${session.user}">
        <b>${session.user?.name_user}&nbsp;${session.user?.last_name}&nbsp;${session.user?.name_company}&nbsp;${session.user?.name_post}&nbsp;${session.user?.name_area}&nbsp;${session.user?.name_project}&nbsp;${session.user?.name_rol}</b> |
         <g:link controller="login" action="logout">Logout</g:link>
      </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>

</div>

       <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
       <resource:autoComplete skin="default" />

         </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Area List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Area</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${areaInstance}">
            <div class="errors">
                <g:renderErrors bean="${areaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                           <TR><TD>Buscar </TD>
                          <td>
                           <!-- <richui:autoComplete name="user" action="${createLinkTo('dir': 'area/searchAJAX')}" />  -->
                                 <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'area/searchAJAX')}"
                                  onItemSelect="document.location.href = '${createLinkTo(dir: 'area/edit')}/' + id;" />
                            <!--       <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'area/searchAJAX')}" />    -->
                          </td></TR>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameArea">Name Area:(Solo Mayusculas)</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:areaInstance,field:'nameArea','errors')}">
                                    <input type="text" id="nameArea" name="nameArea" value="${fieldValue(bean:areaInstance,field:'nameArea')}"/>
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
$('#nameArea').alpha({allcaps:true,allow:' '});
            </g:javascript>
      </body>
</html>
