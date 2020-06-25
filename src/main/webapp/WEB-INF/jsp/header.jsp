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
            <a style="color: white; font-size: xx-large; " class="navbar-brand" href="/mainhome">Our Diary</a>

            <div class="container-lg flex-md-row-reverse" id="navbarSupportedContent">

<%--                <form class="mr-auto form-inline my-lg-0 mx-5">--%>
<%--                    <input class="form-control mr-sm-2" type="search" placeholder="키워드를 입력해주세요..">--%>
<%--                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>--%>
<%--                </form>--%>

                <ul class="navbar-nav " style="align-items: end">
                    <li class="nav-item">
                        <a class="nav-link" href="/mainhome">메인홈 </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/mypage">마이페이지 </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout" >로그아웃</a>
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

