<%--
  Created by IntelliJ IDEA.
  User: sge
  Date: 2020/06/24
  Time: 8:49 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<%
    String email = (String) session.getAttribute("sessionEmail");
    session.removeAttribute(email);
%>
    <script>
        alert('로그아웃되었습니다.. 다음에 또 이용해주세요!')
        location.href='login'
    </script>

</body>
</html>
