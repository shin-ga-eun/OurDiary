<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page import="com.example.demo.domain.diary.dto.GetDiaryDto" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.data.relational.core.sql.In" %>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    Calendar currentCal = Calendar.getInstance();

    String strYear = request.getParameter("year");
    String strMonth = request.getParameter("month");

    int year = currentCal.get(Calendar.YEAR);
    int month = currentCal.get(Calendar.MONTH);
    int date = currentCal.get(Calendar.DATE);

    if(strYear != null)
    {
        year = Integer.parseInt(strYear);
        month = Integer.parseInt(strMonth);
    }
    currentCal.set(year, month, 1);

    int startDay = currentCal.getMinimum(java.util.Calendar.DATE);
    int endDay = currentCal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
    int start_dayOfWeek = currentCal.get(java.util.Calendar.DAY_OF_WEEK); //1일의 요일
    int weekNum = 0; //주차

    //오늘 날짜 저장.
    Calendar todayCal = Calendar.getInstance();
//    SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");
//    int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));
%>

<html lang="ko">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <script type="text/javaScript" language="javascript">

        function goPage (id) {
            location.href="diary/detail?id="+id;
        }

    </script>
    <style>

    </style>


</head>

<body>

    <form name="calendarFrm" id="calendarFrm" action="" method="post">

        <%--            calendar navigation--%>
        <div id="container">
            <table width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#F3F9D7" style="border:1px solid #CED99C; table-layout: fixed">
                <tr>
                    <td height="60">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="10">
                                </td>
                            </tr>

                            <tr>
                                <td align="center" >
                                    <a href="<c:url value='/mainhome' />?year=<%=year-1%>&amp;month=<%=month%>" target="_self">
                                        <b>&lt;&lt;</b><!-- 이전해 -->
                                    </a>

                                    <%if(month > 0 ){ %>

                                    <a href="<c:url value='/mainhome' />?year=<%=year%>&amp;month=<%=month-1%>" target="_self">
                                        <b>&lt;</b><!-- 이전달 -->
                                    </a>

                                    <%} else {%>

                                    <b>&lt;</b>

                                    <%} %>

                                    &nbsp;&nbsp;

                                    <%=year%>년



                                    <%=month+1%>월

                                    &nbsp;&nbsp;

                                    <%if(month < 11 ){ %>

                                    <a href="<c:url value='/mainhome' />?year=<%=year%>&amp;month=<%=month+1%>" target="_self">
                                        <!-- 다음달 --><b>&gt;</b>
                                    </a>

                                    <%}else{%>

                                    <b>&gt;</b>
                                    <%} %>
                                    <a href="<c:url value='/mainhome' />?year=<%=year+1%>&amp;month=<%=month%>" target="_self">
                                        <!-- 다음해 --><b>&gt;&gt;</b>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

            </table>

            <br>

<%--            <%--%>
<%--                String section = year+"-"+(month+1)+"-"+1;--%>
<%--                System.out.println("here is in calendar>> "+section);--%>
<%--                session.setAttribute("sessionSection", section);--%>
<%--            %>--%>
            <%
                List<GetDiaryDto> diaryList = (List<GetDiaryDto>) request.getAttribute("diaryList");
            %>


        <%--            calendar--%>
            <table class="container" border="1px" cellspacing="10" cellpadding="1" bgcolor="white" style="border: 1px solid white; table-layout: fixed">

                <thead>
                    <tr  bgcolor="#CED8F6" class="font-weight-border" style="font-size: 20px;">
                        <td><div align="center"><font color="red">일</font></div></td>

                        <%
                            String[] days = {"월","화","수","목","금"};
                            for(int i=0; i<5; i++){
                            %>
                        <td><div align="center"><font color="white"><%=days[i]%></font></div></td>
                            <%
                            }
                        %>
                        <td><div align="center"><font color="#00008b">토</font></div></td>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <%
                            //front blank loop
                            for(int index = 1; index < start_dayOfWeek ; index++ ) {
                                out.println("<td/>");
                                weekNum++;
                            }

                            //day index start
                            for(int day = 1; day <= endDay; day++) {

                                //요일 color
                                String color = "";
                                if(weekNum == 0){ //일요일
                                    color = "RED";
                                }else if(weekNum == 6){ //토요일
                                    color = "#00008b";
                                }else{
                                    color = "BLACK";
                                }

                                String sUseDate = Integer.toString(year)+"-";
                                sUseDate += (Integer.toString(month+1).length() == 1 ? "0" + (month+1) : Integer.toString(month+1))+"-";
                                sUseDate += (Integer.toString(day).length() == 1 ? "0" + day : Integer.toString(day));

                                String title = "";
                                Long id = Long.parseLong("0");
                                for(int list_index = 0; list_index<diaryList.size(); list_index++){
                                    if(diaryList.get(list_index).getDate().equals(sUseDate)){
                                        title = diaryList.get(list_index).getTitle();
                                        id = diaryList.get(list_index).getId();
                                        break;
                                    }
                                }

                                String bgcolor="";
                                if(title.equals("")){
                                    bgcolor="#EFEFEF";
                                }
                                else {
                                    bgcolor="E0ECF8";
                                }

                            %>
                                <td valign='top' align='left' height='92px' bgcolor='<%=bgcolor%>' nowrap>
                                    <div>
                                    <font color='<%=color%>'><%=day%></font>
                                    <br>
                                    <%
                                        if(!title.equals("")){
                                            %>
                                            <input class='btn btn-secondary' size="12" value="<%=title%>" onclick="goPage(<%=id%>)"/>
                                            <%
                                        }
                                        %>
                                    </div>
                                </td>
                            <%
                                weekNum++;

                                if(weekNum == 7){
                                    out.println("</tr>");
                                    if(day <= endDay) {
                                        out.println("<tr>");
                                    }
                                    weekNum=0;
                                }
                            }
                            //day index end

                            //last blank loop
                            while(weekNum > 0 && weekNum < 7) {
                                out.println("<td/>");
                                weekNum++;
                            }
                        %>
                    </tr>
                </tbody>

            </table>

        </div>

    </form>

</body>

</HTML>
[출처] [JSP] JSP 달력(Calendar) 만들기 예제 |작성자 자바킹