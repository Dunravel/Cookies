<%--
  Created by IntelliJ IDEA.
  User: dunra
  Date: 16.02.2019
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie info</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.2.1/css/bootstrap.min.css">
</head>
<body>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Cookie name</th>
        <th scope="col">Cookie value</th>
    </tr>
    </thead>
    <tbody>

        <%
        Cookie[] cookies = request.getCookies();
        int counter = 1;
        for(Cookie cookie : cookies){
            if(cookie.getName().equals(request.getParameter("cookie-name"))){
            %>
            <tr>
                <th scope="row"><%= counter %></th>
                <td><%=  cookie.getName()%></td>
                <td><%= cookie.getValue()%></td>
            </tr>
        <%
            counter++;
            }
        }
     %>
</body>
</html>
