<%--
  Created by IntelliJ IDEA.
  User: sge
  Date: 2020/06/24
  Time: 9:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
    <%--        mainhome header--%>
    <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #f5c6cb; color:white;">
        <div class="container">
            <div class="flex-md-column">
                <a style="color: white; font-size: xx-large; " class="navbar-brand" href="/mainhome">Our Diary</a>
                <p class="lead"><%=session.getAttribute("sessionUserName")%> 님, 오늘도 좋은하루 보내세요!</p>
            </div>
            <div class="flex-md-row-reverse" id="navbarSupportedContent">
                <ul class="navbar-nav " style="align-items: end">
                    <li class="nav-item">
                        <a class="nav-link" href="/mainhome" style="font-size: medium">메인홈 </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/memberInfo" style="font-size: medium">마이페이지 </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout" style="font-size: medium">로그아웃</a>
                    </li>
                </ul>
            </div>
        </div>
        </nav>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>

