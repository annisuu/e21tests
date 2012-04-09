

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Post</title>

      <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
      <resource:autoComplete skin="default" />


      <g:if test="${session.user}">
        Usuario: <b>${session.user?.name_user}&nbsp;${session.user?.last_name}</b>
         <p> Projecto:<b>${session.user?.name_project}</b> </p>
         <p> Rol:<b>${session.user?.name_rol}</b> </p>

         <g:link controller="login" action="logout">Logout</g:link>
      </g:if>
     <g:else>
       <g:link controller="login" action="login">Login</g:link>
     </g:else>




    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Post List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Post</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${postInstance}">
            <div class="errors">
                <g:renderErrors bean="${postInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                             <TR><TD>Buscar </TD>
                          <td>
                           <!-- <richui:autoComplete name="user" action="${createLinkTo('dir': 'post/searchAJAX')}" />  -->
                                 <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'post/searchAJAX')}"
                                  onItemSelect="document.location.href = '${createLinkTo(dir: 'post/edit')}/' + id;" />
                            <!--       <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'post/searchAJAX')}" />    -->
                          </td></TR>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="namePost">Name Post (Solo Mayusculas):</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:postInstance,field:'namePost','errors')}">
                                    <input type="text" id="namePost" name="namePost" value="${fieldValue(bean:postInstance,field:'namePost')}"/>
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
        $('#namePost').alpha({allcaps:true,allow:' '});
             </g:javascript>

    </body>
</html>
