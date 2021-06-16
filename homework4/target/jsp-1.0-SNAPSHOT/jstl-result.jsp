<%--
  Created by IntelliJ IDEA.
  User: 田宇轩
  Date: 2021/5/6
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL Results</title>
</head>
<body>
<c:forEach var="user" items="${users}">
    <p>${user.age}</p>
    <p>This cat name is: ${user.cat.name}</p>
</c:forEach>
<p>---------------------------------</p>
<c:forEach var="user" items="${users}">
    <c:if test="${user.age < 18}">
        <p>This user age (${user.age}) is less than 18.</p>
        <p>This use will be <c:out value="${user.age + 1}" /> next year.</p>
    </c:if>
</c:forEach>
<p>--------------------------------</p>
<c:choose>
    <c:when test="${user == 'Admin'}">
        Good morning, Admin.
    </c:when>
    <c:when test="${user == 'Manager'}">
        How is it going? Manager.
    </c:when>
    <c:otherwise>
        Hey, man.
    </c:otherwise>
</c:choose>

<p>--------------------------</p>
<c:out value="Hello"/>
<br/>
<c:out value="${user}" />
<br/>
<c:out value="${me}" default="Guest" />
<br/>
<c:out value="${me}">Guest</c:out>
<br/>
<c:out value="${user}">Guest</c:out>
</body>
</html>