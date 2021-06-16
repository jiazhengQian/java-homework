<%--
  Created by IntelliJ IDEA.
  User: qjz
  Date: 2021/6/15
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">

    <link rel="stylesheet" href="css/bootstrap-3.3.4/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/Flat-UI-master/dist/css/flat-ui.min.css"/>
    <script src="css/bootstrap-3.3.4/dist/js/jquery-1.11.3.min.js"></script>
    <script src="css/bootstrap-3.3.4/dist/js/bootstrap.min.js"></script>
    <script src="css/Flat-UI-master/dist/js/flat-ui.min.js"></script>
    <title> ${user.name} </title>
    <style>
        .row{
            margin-left: 20px;
            margin-right: 20px;;
        }
        .center{
            text-align: center;
        }
    </style>
</head>
<body>

<!-- Static navbar -->
<!--content-->
<div class="row thumbnail">
    <div class="col-sm-4">
        <img style="width: 100%; height: 250px; display: block;" src="${user.URL}"  data-holder-rendered="true">
        <div class="caption center">
            <h3>${user.name}</h3>
            <p>ID：${user.id}</p>
            <p><a class="btn btn-danger btn-block" role="button" href="remove-user">Quit</a> <a class="btn btn-primary btn-block" role="button" href="manage-user">Manage</a></p>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="caption">
            <h3>Signature</h3>
            <p>${user.sign}</p>

        </div>

    </div>

</div>

<!--footer-->
<div class="navbar navbar-default navbar-static-bottom">
    好耶q(≧▽≦q)
</div>
</body>
</html>
