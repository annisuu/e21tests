<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <meta name="layout" content="mainInstrutor" />
        <title>Agregar Usuario</title>

      <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
      <resource:autoComplete skin="default" />

    </head>
    <body>
        <div class="nav">

            <span class="menuButton"><g:link class="list" action="list">Lista de Usuarios</g:link></span>
        </div>
        <div class="body">
            <h1>Agregar Usuario</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
            <div class="errors">
                <g:renderErrors bean="${userInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                              <TR><TD>Buscar </TD>
                          <td>
                           <!-- <richui:autoComplete name="user" action="${createLinkTo('dir': 'user/searchAJAX')}" />  -->
                                 <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'user/searchAJAX')}"
                                  onItemSelect="document.location.href = '${createLinkTo(dir: 'user/edit')}/' + id;" />
                            <!--       <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'user/searchAJAX')}" />    -->
                          </td></TR>

                       <tr class="prop">
                       <td valign="top" class="name">
                       <label for="nameUser">Nombre:(Solo Mayusculas)</label>
                       </td>
                       <td valign="top" class="value ${hasErrors(bean:userInstance,field:'nameUser','errors')}">
                       <input type="text" id="nameUser" class="nameUser tb" name="nameUser" value="${fieldValue(bean:userInstance,field:'nameUser')}"/>
                       </td>
                       </tr>


                       <tr class="prop">
                       <td valign="top" class="name">
                       <label for="lastName">Apellidos:(Solo Mayusculas)</label>
                       </td>
                       <td valign="top" class="value ${hasErrors(bean:userInstance,field:'lastName','errors')}">
                       <input type="text" id="lastName" name="lastName" value="${fieldValue(bean:userInstance,field:'lastName')}"/>
                       </td>
                       </tr>

                       <tr class="prop">
                       <td valign="top" class="name">
                       <label for="password">Clave:</label>
                       </td>
                       <td valign="top" class="value ${hasErrors(bean:userInstance,field:'password','errors')}">
                       <input type="text" id="password" name="password" value="${fieldValue(bean:userInstance,field:'password')}"/>
                       </td>
                       </tr>
                       <tr>

                       <tr class="prop">
                       <td valign="top" class="name">
                       <label for="idProyecto">Proyecto:</label>
                       </td>
                       <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idProyecto','errors')}">
                       <select name="idProyecto" id="idProyecto">
                        <g:each var="a" in="${proyecto}">
                        <option value="${a.id_project}" <% if(userInstance.idProyecto==a.id_project){ println "selected"}%>>${a.name_project}</option>
                        </g:each>
                        </select>
                       </td>
                       </tr>

                       <tr class="prop">
                       <td valign="top" class="name">
                       <label>Empresa:</label>
                       </td>
                       <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idCompany','errors')}">
                       <select name="idCompany" >
                        <g:each var="b" in="${company}">
                        <option value="${b.id_company}">
                        ${b.name_company}
                        </option>
                        </g:each>
                       </select>
                       </td>
                       </tr>


                       <tr class="prop">
                        <td valign="top" class="name">
                        <label> Area:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idArea','errors')}">
                        <select name="idArea">
                        <g:each var="c" in="${area}">
                        <option value="${c.id_area}" <%if(c.id_area==userInstance.idArea.toString()){println "selected"}%>>
                        ${c.name_area}
                        </option>
                        </g:each>
                        </select>
                        </td>
                        </tr>


                         <tr class="prop">
                        <td valign="top" class="name">
                        <label>Puesto:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idPost','errors')}">
                        <select name="idPost">
                          <g:each var="e" in ="${post}">
                          <option value="${e.id_post}">
                          ${e.name_post}
                          </option>
                          </g:each>
                        </select>
                        </td>
                        </tr>



                        <tr class="prop">
                        <td valign="top" class="name">
                        <label for="idRol">Rol:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idrol','errors')}">
                        <select name="idrol" id="idrol">
                         <g:each var="d" in ="${rol}">
                         <option  value="${d.id_rol}">
                         ${d.name_rol}
                         </option>
                         </g:each>
                        </select>
                        </td>
                        </tr>



           <td>
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
$('#nameUser').alpha({allcaps:true,allow:' '});
$('#lastName').alpha({allcaps:true,allow:' '});



</g:javascript>
    </body>
</html>

