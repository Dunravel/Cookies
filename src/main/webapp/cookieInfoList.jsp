<%--
  Created by IntelliJ IDEA.
  User: dunra
  Date: 16.02.2019
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie info list</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.2.1/css/bootstrap.min.css">
</head>
<body>
    <h2>Cookie info list</h2>

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
        for(int i = 0; i < cookies.length; i++){
            %>
            <tr>
                <th scope="row"><%= i+1 %></th>
                <td><%=  cookies[i].getName()%></td>
                <td><%= cookies[i].getValue()%></td>
            </tr>
            <%
        }
     %>
</body>
</html>
