<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 田宇轩
  Date: 2021/5/6
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link href="asset/css/team.css" rel="stylesheet">
    <link href="asset/css/footer.css" rel="stylesheet">
    <title>Hobby Results</title>

</head>
<body>
<h2>The friends who share your hobby of ${requestScope.hobby} are:</h2>
<%
    List<String> names = (ArrayList<String>) request.getAttribute("names");
    for (String name : names) {
%>
<%=name %>
<br/>
<% } %>

<div class="container">
    <div class="row">
        <%
            for (String name: names) {
        %>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="our-team">
                <div class="picture">
                    <img class="img-fluid" src="asset/image/<%=name %>.jpg">
                </div>
                <div class="team-content">
                    <h3 class="name"><%=name %></h3>
                    <h4 class="title">Hobby: ${requestScope.hobby}</h4>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>





</body>
</html>
