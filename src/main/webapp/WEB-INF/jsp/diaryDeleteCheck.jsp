<%--
  Created by IntelliJ IDEA.
  User: sge
  Date: 2020/06/24
  Time: 4:36 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=utf-8" %>

<html>
<head></head>
<body>
<%
    String DELETE_OK = (String) request.getAttribute("DELETE_OK");

    if(DELETE_OK.equals("success")){
        out.println("<script>alert('일기삭제에 성공하였습니다..'); </script>");
        out.println("<script>location.href='/mainhome'</script>");
    }

%>

</Form>
</body>
</html>