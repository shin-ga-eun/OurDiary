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
    String UPDATE_OK = (String) request.getAttribute("UPDATE_OK");

    if(UPDATE_OK.equals("success")){
        out.println("<script>alert('일기수정에 성공하였습니다..'); </script>");
        out.println("<script>location.href='mainhome'</script>");
    }

%>

</Form>
</body>
</html>