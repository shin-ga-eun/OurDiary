<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head><title>signup</title></head>
<body>
<Form Action="/signUpCheck" Method="post" >

    <input type="text" name="email" ><br/>
    <input type="password" name="password" ><br/>
    <input type="text" name="name" ><br/>
    <input type="text" name="phone" ><br/>
    <input type="text" name="profile" >
    <br/><br/>

    <input type="submit" value="signup">
    <input type="button" value="로그인화면으로" onclick="location.href='login'">
</Form>
</body>
</html>