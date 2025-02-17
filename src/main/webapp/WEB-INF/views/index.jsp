<%--
  Created by IntelliJ IDEA.
  User: iyongsu
  Date: 2/13/25
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
     <h1>Spring boot + JSP 배포 성공!!!</h1>
     <p>현재 서버 시간: <%= new java.util.Date() %></p>
     <form action="form" method="get">
         <button type="submit" >폼 페이지로 이동</button>
     </form>
</body>
</html>
