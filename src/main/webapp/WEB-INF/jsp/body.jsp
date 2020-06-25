<%--
  Created by IntelliJ IDEA.
  User: sge
  Date: 2020/06/24
  Time: 9:40 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

<%--keyword search form--%>
<form class="mr-auto form-inline my-lg-0 mx-5">
    <input class="form-control mr-sm-2" type="search" placeholder="키워드를 입력해주세요..">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
</form>




<%--calendar--%>
<div class="table-responsive-lg" style="width: 992px;">
    <%
        Calendar currentCalendar = Calendar.getInstance();
        currentCalendar.set(Calendar.DATE, 1);

        int start_dayOfWeek = currentCalendar.get(Calendar.DAY_OF_WEEK); //1일의 요일
        int last_day = currentCalendar.getActualMaximum(Calendar.DATE); //해당 월의 마지말 일
        int week_size = currentCalendar.getActualMaximum(Calendar.WEEK_OF_MONTH); //해당 월의 주 수
        int year = currentCalendar.get(Calendar.YEAR); //년
        int month = currentCalendar.get(Calendar.MONTH); //월
        int day = currentCalendar.get(Calendar.DATE); //일
    %>

    <table class="table " border="0" cellspacing="1" cellpadding="1">
        <tr>
            <td align="center"colspan="7"><%=year%>년<%=(month+1)%>월</td>
        </tr>

        <tr>
            <%
                String[] days = { "sun", "mon", "tue", "wed", "thu", "fri", "sat" };
                for (int i = 0; i < 7; i++) {
            %>
            <td><%=days[i]%></td>
            <%
                }
            %>
        </tr>

        <tr>
            <%
                for (int k = 1; k < start_dayOfWeek; k++) {
            %>
            <td></td>
            <%
                }
                for (int j = 1; j <= last_day; j++) {
            %>
            <td>
                <%=j%>
                <%
                    if ((start_dayOfWeek+j-1) % 7 == 0) {
                %>
            </td>
        </tr>
        <tr>
        <%
                    }
                }
                for(int e=1;e<(7-start_dayOfWeek);e++){
        %>
        <td></td>
        <%
                }
        %>
    </tr>

    </table>
</div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
