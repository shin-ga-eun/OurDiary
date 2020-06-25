<%--
  Created by IntelliJ IDEA.
  User: sge
  Date: 2020/06/24
  Time: 9:40 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Calendar"%>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">



</head>
<body>


<%--keyword search form and add a diary btn--%>
<div class="flex-row">
    <button type="button" class="btn btn-lg btn-block btn-outline-dark" onclick="location.href='diary'">일기 쓰기</button>


    <form class="form-inline my-lg-3 flex-md-row-reverse">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
        <input class="form-control mr-sm-2" type="search" placeholder="키워드를 입력해주세요..">
    </form>

</div>

<%--calendar--%>
<div>
    <jsp:include page="calendar.jsp" flush="false"/>


</div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
