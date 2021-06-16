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
    <title>Log in</title>
    <style>
        .row{
            margin-left: 20px;
            margin-right: 20px;;
        }
    </style>
</head>
<body>
<!-- Static navbar -->
<!--content-->
<div class="container" >
    <div class="row thumbnail center">
        <div class="col-sm-12">
            <h1 class="text-center" style="margin-bottom: 30px">Log in</h1>
        </div>
        <div class="col-sm-6">
            <form class="form-horizontal caption" method="post" action="login">
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">Username</label>
                    <div class="col-sm-8">
                        <input type="text" name="user" class="form-control" id="username" placeholder="Username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-8">
                        <input type="password" name="pwd" class="form-control" id="password" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">Remember me
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-5">
                        <button type="submit" class="btn btn-success btn-block">Login in</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-sm-6">
            <div class="container">
            <img src="image/女仆.png" style="height: 240px;weight:350px">
            <h3>Welcome backヾ(≧▽≦*)o</h3>
            </div>
        </div>
    </div>
</div>


<!--footer-->
</body>
</html>
