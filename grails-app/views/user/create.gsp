

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create User</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">User List</g:link></span>
        </div>
        <div class="body">
            <h1>Create User</h1>
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idArea">Id Area:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idArea','errors')}">
                                    <select name="idArea">
                                      <g:each var="c" in="${area}">
                                        <option value="${c.id_area}">
                                          ${c.name_area}
                                        </option>
                                      </g:each>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idCompany">Id Company:</label>
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
                                    <label for="idPost">Id Post:</label>
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
                                    <label for="idProyecto">Id Proyecto:</label>
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
                                    <label for="idRol">Idrol:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idrol','errors')}">
                                    <select name="idRol" id="idRol">
                                      <g:each var="d" in ="${rol}">
                                      <option  value="${d.id_rol}">
                                        ${d.name_rol}
                                      </option>
                                      </g:each>
                                      </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastName">Last Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'lastName','errors')}">
                                    <input type="text" id="lastName" name="lastName" value="${fieldValue(bean:userInstance,field:'lastName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameUser">Name User:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'nameUser','errors')}">
                                    <input type="text" id="nameUser" name="nameUser" value="${fieldValue(bean:userInstance,field:'nameUser')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password">Password:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'password','errors')}">
                                    <input type="text" id="password" name="password" value="${fieldValue(bean:userInstance,field:'password')}"/>
                                </td>
                            </tr>
                        <tr>
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
    </body>
</html>
