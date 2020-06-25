<%@ page import="com.example.demo.domain.member.dto.GetMemberDto" %>
<%@ page import="org.springframework.http.converter.json.GsonBuilderUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<%
    GetMemberDto memberInfo = (GetMemberDto) request.getAttribute("sessionMemberInfo");
%>
<div class="container">

    <div class=".container-md" >
        <p class="font-weight-normal" style="font-size: xx-large">마이 페이지</p>

        <form action="/mypage" method="post">
            <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control" id="email" name="email" value="<%=memberInfo.getEmail()%>">
                </div>
            </div>
            <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control" id="name" name="name" value="<%=memberInfo.getName()%>">
                </div>
            </div>
            <div class="form-group row">
                <label for="phone" class="col-sm-2 col-form-label">Phone</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control" id="phone" name="phone" value="<%=memberInfo.getPhone()%>">
                </div>
            </div>
            <div class="form-group row">
                <label for="profile" class="col-sm-2 col-form-label">Profile</label>
                <div class="col-sm-10">
                    <textarea readonly aria-multiline="true" rows="3" class="form-control" id="profile" name="profile"><%=memberInfo.getProfile()%></textarea>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="button" class="btn btn-primary" onclick="location.href='mypage'">회원정보수정하기</button>
                    <button type="button" class="btn btn-danger" onclick="location.href='leave'">탈퇴하기</button>
                </div>
            </div>
        </form>

    </div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>