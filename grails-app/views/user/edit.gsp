

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit User</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">User List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New User</g:link></span>
        </div>
        <div class="body">
            <h1>Edit User</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
            <div class="errors">
                <g:renderErrors bean="${userInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${userInstance?.id}" />
                <input type="hidden" name="version" value="${userInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idArea">Id Area:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idArea','errors')}">
                                    <input type="text" id="idArea" name="idArea" value="${fieldValue(bean:userInstance,field:'idArea')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idCompany">Id Company:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idCompany','errors')}">
                                    <input type="text" id="idCompany" name="idCompany" value="${fieldValue(bean:userInstance,field:'idCompany')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idPost">Id Post:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idPost','errors')}">
                                    <input type="text" id="idPost" name="idPost" value="${fieldValue(bean:userInstance,field:'idPost')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idProyecto">Id Proyecto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idProyecto','errors')}">
                                    <input type="text" id="idProyecto" name="idProyecto" value="${fieldValue(bean:userInstance,field:'idProyecto')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idrol">Idrol:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'idrol','errors')}">
                                    <input type="text" id="idrol" name="idrol" value="${fieldValue(bean:userInstance,field:'idrol')}"/>
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
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
