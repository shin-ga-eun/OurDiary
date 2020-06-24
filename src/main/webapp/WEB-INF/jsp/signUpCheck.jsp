<%--
  Created by IntelliJ IDEA.
  User: sge
  Date: 2020/06/24
  Time: 4:36 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=utf-8" %>

<html>
<head><title>signUp Check</title></head>
<body>
<%
    String SIGNUP_OK = (String) request.getAttribute("SIGNUP_OK");

    if(SIGNUP_OK.equals("null")) {
        out.println("<script>alert('이메일/비밀번호/이름 은 필수값입니다.. 다시 입력해주세요..'); </script>");
        out.println("<script>location.href='signUp'</script>");
    }

    if(SIGNUP_OK.equals("IsAlreadyMember")) {
        out.println("<script>alert('이미 존재하는 이메일입니다.. 다시 입력해주세요..'); </script>");
        out.println("<script>location.href='signUp'</script>");
    }
    else if(SIGNUP_OK.equals("success")){
        out.println("<script>alert('회원가입에 성공하였습니다.. 로그인 화면으로 이동합니다..'); </script>");
        out.println("<script>location.href='login'</script>");

    }

%>

</Form>
</body>
</html>