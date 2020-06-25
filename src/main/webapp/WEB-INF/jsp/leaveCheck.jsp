<%@ page language="java" contentType="text/html;charset=utf-8" %>

<html>
<head></head>
<body>
<%
    String LEAVE_OK = (String) request.getAttribute("LEAVE_OK");

    if(LEAVE_OK.equals("wrongPassword")){
        out.println("<script>alert('비밀번호가 잘못되었습니다! 탈퇴에 실패하였습니다~!~!'); </script>");
        out.println("<script>location.href='mainhome'</script>");
    }
    else if(LEAVE_OK.equals("success")) {
        out.println("<script>alert('탈퇴가 정상적으로 처리되었습니다..'); </script>");
        out.println("<script>location.href='login'</script>");
    }

%>

</Form>
</body>
</html>