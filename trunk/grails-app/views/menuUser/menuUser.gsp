<%--
  Created by IntelliJ IDEA.
  User: aNn
  Date: 10/04/2012
  Time: 09:37:49 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title></head>
  <body>Place your content here</body>
 <g:each var="a" in="${tematicas}">
        ${a.name_subject}
               </g:each>
</html>