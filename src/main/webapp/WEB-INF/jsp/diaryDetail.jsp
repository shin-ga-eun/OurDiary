<%@ page import="com.example.demo.domain.diary.dto.GetDiaryDto" %><%--
  Created by IntelliJ IDEA.
  User: sge
  Date: 2020/06/24
  Time: 7:55 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <%--        mainhome header--%>
    <div class="fixed-top">
        <jsp:include page="header.jsp" flush="false"/>
    </div>

    <%--        mainhome body--%>
    <div style="padding-top: 150px">

        <%
            GetDiaryDto diary = (GetDiaryDto) request.getAttribute("diary");
        %>

        <div class="container align-items-lg-center">
            <p class="font-weight-normal" style="font-size: xx-large"><%=diary.getDate()%></p>
            <p class="lead">Title <%=diary.getTitle()%></p>

            <p class="lead">Weather <%=diary.getWeather()%></p>

            <p class="lead">Content <%=diary.getContent()%></p>

            <p class="lead">Create_at <%=diary.getCreate_at()%></p>

            <p class="lead">Modify_at <%=diary.getModify_at()%></p>

            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="button" class="btn btn-primary" onclick="location.href='mainhome'">수정하기</button>
                    <button type="button" class="btn btn-danger" onclick="location.href='mainhome'">삭제하기</button>

                </div>
            </div>
        </div>



    </div>

    <%--        mainhome footer--%>
    <div class="fixed-bottom">
        <jsp:include page="footer.jsp" flush="false"/>
    </div>

</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
