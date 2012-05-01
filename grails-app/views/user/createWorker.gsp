<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
           <meta name="layout" content="mainInstruc" />
        <title>agregar usuario</title>

      <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>
      <resource:autoComplete skin="default" />

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" action="listWorker">lista de trabajadores</g:link></span>
        </div>
        <div class="body">

            <h1>agregar trabajador</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
           
            <g:form action="saveWorker" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                              <TR><TD>Buscar </TD>
                          <td>
                <!-- <richui:autoComplete name="user" action="${createLinkTo('dir': 'user/searchAJAX')}" />  -->
                     <richui:autoComplete name="searchuser" action="${createLinkTo('dir': 'user/searchAJAX')}"
                     onItemSelect="document.location.href = '${createLinkTo(dir: 'user/editWorker')}/' + id;" />
            <!--     <richui:autoComplete name="person" delimChar="," action="${createLinkTo('dir': 'user/searchAJAX')}" />    -->
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
                        <option value="">SELECCIONA EL PROYECTO</option>
                        <g:each var="a" in="${proyecto}">
                        <option value="${a.id_project}" <% if(userInstance.idProyecto.toString().equals(a.id_project.toString())){ println "selected"}%>>${a.name_project}</option>
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
                         <option value="">SELECCIONA LA EMPRESA</option>
                        <g:each var="b" in="${company}">
                        <option value="${b.id_company}" <% if(userInstance.idCompany.toString().equals(b.id_company.toString())){ println "selected"}%>>
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
                           <option value="">SELECCIONA EL AREA</option><% println userInstance.idArea.toString()%>
                        <g:each var="c" in="${area}">
                        <option value="${c.id_area}" <% if(c.id_area.toString().equals(userInstance.idArea.toString())){println "selected"}%>>
                        ${c.name_area}
                        </option>
                        </g:each>
                        </select>
                        </td>
                        </tr>


                         <tr class="prop">
                        <td valign="top" class="name">
                        <label>Cargo:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idPost','errors')}">
                        <select name="idPost">
                          <option value="">SELECCIONA EL CARGO</option>
                          <g:each var="e" in ="${post}">
                          <option value="${e.id_post}"  <% if(e.id_post.toString().equals(userInstance.idPost.toString())){println "selected"}%>>
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
                         <option value="3">TRABAJADOR</option>
                         </select>
                        </td>
                        </tr>

           <td>
           </td>


                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="CreateWorker" /></span>
                </div>
            </g:form>
        </div>
    <g:javascript>
$('#nameUser').alpha({allcaps:true,allow:' '});
$('#lastName').alpha({allcaps:true,allow:' '});

</g:javascript>
    </body>
</html>

