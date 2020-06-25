<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Our Diary</title>
</head>
<body>

<div class="container">
    <div class="jumbotron jumbotron-fluid" style="background-color: #f5c6cb">
        <div class="container" style="color: white">
            <h1 class="display-4">Our Diary </h1>
            <p class="lead">일기작성 페이지입니다.</p>
        </div>
    </div>
    <div class=".container-md" >
        <form action="/diary" method="post">
            <div class="form-group row">
                <label for="writer" class="col-sm-2 col-form-label">Writer</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control" id="writer" name="writer" value="<%=session.getAttribute("sessionEmail")%>">
                </div>
            </div>
            <div class="form-group row">
                <label for="date" class="col-sm-2 col-form-label">Date</label>
                <div class="col-sm-10">
                    <input type="date" required class="form-control" id="date" name="date">
                </div>
            </div>
            <div class="form-group row">
                <label for="weather" class="col-sm-2 col-form-label">Weather</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="weather" name="weather">
                </div>
            </div>
            <div class="form-group row">
                <label for="title" class="col-sm-2 col-form-label">Title</label>
                <div class="col-sm-10">
                    <input type="text" required class="form-control" id="title" name="title">
                </div>
            </div>
            <div class="form-group row">
                <label for="content" class="col-sm-2 col-form-label">Content</label>
                <div class="col-sm-10">
                    <textarea aria-multiline="true" rows="3" class="form-control" id="content" name="content"></textarea>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">작성완료</button>
                    <button type="button" class="btn btn-secondary" onclick="location.href='mainhome'">메인홈화면으로</button>
                </div>
            </div>
        </form>






    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>