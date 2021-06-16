<%--
  Created by IntelliJ IDEA.
  User: qjz
  Date: 2021/6/15
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">这什么东西</span>
            </button>
            <a class="navbar-brand" href="index">琉璃图书馆</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index">Home</a></li>
                <li><a href="center">Center</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden-sm">
                <li><a href="login">Log in</a></li>
                <li><a href="Register.jsp">Sign up</a></li>
                <li>
                    <form action="search-book" method="post" class="form-inline">
                        <input class="form-control" type="text" name="bookSearch" placeholder="Search" aria-label="Search the book">
                        <button class="btn btn-primary" type="submit">Search</button>
                    </form>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>
