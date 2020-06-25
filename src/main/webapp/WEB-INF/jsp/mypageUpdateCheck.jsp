<%@ page language="java" contentType="text/html;charset=utf-8" %>

<html>
<head><title>signUp Check</title></head>
<body>
<%
    String UPDATE_OK = (String) request.getAttribute("UPDATE_OK");

    if(UPDATE_OK.equals("WrongPassword")) {
        out.println("<script>alert('비밀번호가 올바르지 않습니다.. 이전 화면으로 이동합니다..'); </script>");
        out.println("<script>location.href='memberInfo'</script>");
    }
    else if(UPDATE_OK.equals("success")){
        out.println("<script>alert('회원정보 수정에 성공하였습니다..'); </script>");
        out.println("<script>location.href='memberInfo'</script>");

    }

%>

</Form>
</body>
</html>