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
    String WRITE_OK = (String) request.getAttribute("WRITE_OK");

    if(WRITE_OK.equals("IsAlreadyDiary")) {
        out.println("<script>alert('해당 날짜에 이미 일기가 작성되어있습니다.. 다른 날짜를 선택하시거나 일기 내용을 수정을 해주세요..'); </script>");
        out.println("<script>location.href='mainhome'</script>");
    }
    else if(WRITE_OK.equals("success")){
        out.println("<script>alert('일기작성에 성공하였습니다..'); </script>");
        out.println("<script>location.href='mainhome'</script>");
    }

%>

</Form>
</body>
</html>