<%--
  Created by IntelliJ IDEA.
  User: dunra
  Date: 16.02.2019
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie added</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.2.1/css/bootstrap.min.css">
</head>
<body>
<p>Cookie has been added:</p>
    <% String[] names = request.getParameterValues("cookie-name");
        for(String name : names){
           %> <%= name%>
       <% }
    %>

<form action="/index.jsp">
    <div>
        <button class="btn btn-outline-secondary" type="submit">Return to main page</button>
    </div>
</form>
</body>
</html>
