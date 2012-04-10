
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Company</title>


      <g:if test="${session.user}">
        Usuario: <b>${session.user?.name_user}&nbsp;${session.user?.last_name}</b>
         <p> Projecto:<b>${session.user?.name_project}</b> </p>
         <p> Rol:<b>${session.user?.name_rol}</b> </p>

         <g:link controller="login" action="logout">Logout</g:link>
      </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>


      <resource:autoComplete skin="default" />



       <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
       <resource:autoComplete skin="default" />


    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Company List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Company</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${companyInstance}">
            <div class="errors">
                <g:renderErrors bean="${companyInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                              <TR><TD>Buscar ${ann} </TD>
                          <td>
                           <!-- <richui:autoComplete name="person" action="${createLinkTo('dir': 'company/searchAJAX')}" />  -->
                                 <richui:autoComplete name="searchperson" action="${createLinkTo('dir': 'company/searchAJAX')}"
                                  onItemSelect="document.location.href = '${createLinkTo(dir: 'company/edit')}/' + id;" />
                            <!--       <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'company/searchAJAX')}" />    -->
                          </td></TR>
                            <tr class="prop">

                                <td valign="top" class="name">

                                    <label for="nameCompany">Name Company:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:companyInstance,field:'nameCompany','errors')}">
                                    <input type="text" id="nameCompany" name="nameCompany" value="${fieldValue(bean:companyInstance,field:'nameCompany')}"/>
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
$('#nameCompany').alpha({allcaps:true,allow:' '});
            </g:javascript>
    </body>
</html>
