

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Proyecto</title>

        <g:javascript library="jquery"></g:javascript>
      <g:javascript library="jquery.maskedinput-1.3.min"></g:javascript>
      <g:javascript library="jquery.alphanumeric.pack"></g:javascript>

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Proyecto List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Proyecto</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${proyectoInstance}">
            <div class="errors">
                <g:renderErrors bean="${proyectoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nameProyecto">Name Proyecto:(Solo Mayuscula)</label>
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
 $('#nameProyecto').alpha({allcaps:true});
             </g:javascript>


    </body>
</html>
