<%--
  Created by IntelliJ IDEA.
  User: dunra
  Date: 16.02.2019
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie Removal</title>
</head>
<body>
    <%
        Boolean deleted = (Boolean)request.getAttribute("deleted");
        if(deleted){
            %> Cookie: <%= request.getParameter("delete-name")%> has been deleted. <%
        }else{
            %> Cookie: <%= request.getParameter("delete-name")%> has not been found! <%
    }
    %>

</body>
</html>
