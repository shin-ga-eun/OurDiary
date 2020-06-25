<%@ page import="com.example.demo.domain.member.dto.GetMemberDto" %>
<%@ page import="com.example.demo.domain.diary.dto.GetDiaryDto" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script type="text/javaScript" language="javascript">
        function goPage (id) {
            location.href="/diary/detail?id="+id;
        }
    </script>
</head>
<body>
<%
    String keyword = (String) request.getAttribute("keyword");
    List<GetDiaryDto> diaryList = (List<GetDiaryDto>) request.getAttribute("diaryList");
%>
<%--        mainhome header--%>
<div class="fixed-top">
    <jsp:include page="header.jsp" flush="false"/>
</div>

<div class="container" style="padding-top: 150px;">
    <div class="flex-column" style="margin-bottom: 25px">
        <form action="/diary/list" method="post" class="form-inline flex-lg-row">
            <input class="form-control" style="width: 300px; margin-right: 5px" type="search" placeholder="일기 키워드를 입력해주세요.." name="keyword">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
        </form>
    </div>

    <p class="display-4">키워드 "<%=keyword%>" 검색 결과입니다..<br/></p>
    <ul class="list-group list-group-flush">
    <%
        for(int i=0; i< diaryList.size(); i++){
            %>
            <li class="list-group-item">
                <a class="h1" href="#" onclick="goPage(<%=diaryList.get(i).getId()%>)"> <%=diaryList.get(i).getDate()%> <br/></a>
                <p class="h4"><%=diaryList.get(i).getTitle()%><br/></p>
            </li>
        <%
        }
    %>
    </ul>


</div>
<div class="fixed-bottom">
    <jsp:include page="footer.jsp" flush="false"/>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>