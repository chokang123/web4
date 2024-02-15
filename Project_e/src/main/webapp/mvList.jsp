<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>
<link rel="icon" type="image/png" sizes="16x16"	href="image/favicon-16x16.png">
<style>

.slider_wrap{width:20%;max-width:700px;right:22%;
padding-top:7%; padding-bottom:10%; float:right;position:relative;display:inline-block;*display:inline;}


.my_bxslider img{width:100%;}

table {
padding-left:100px;
	float: left;
    width: 80%;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
    
}

table td {
    padding: 10px;
    background-color: #eee;
}

table th {
    background-color: #333;
    color: #fff;
    padding: 10px;
}

.mvPos {
    width: 150px;
    height: 200px;
}
.ran{
width:500px;}

</style>
<meta charset="UTF-8">
<title>영화순위</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<div class="slider_wrap">
	<ul class="my_bxslider">
	<c:forEach var="vo" items="${list}">
		<li><img src="${vo.mvPos }"></li>
	</c:forEach>
	</ul>
</div>
	<table>
		<thead>
			<tr>
				<th style="padding-left: 100px;padding-right: 60px;">순위</th>
				<th style="padding-left: 60px;padding-right: 60px;">포스터</th>
				<th style="padding-left: 60px;padding-right: 60px;">제목</th>
				<th style="padding-left: 60px;padding-right: 60px;">감독</th>
				<th style="padding-left: 60px;padding-right: 60px;"> 예매율</th>
				<th class="ran">인기영화</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.mvRank }</td>
					<td><img src="${vo.mvPos }" class="mvPos"></td>
					<td>${vo.mvTitle }</td>
					<td>${vo.mvDir }</td>
					<td>${vo.mvScore }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

<script type="text/javascript">
$(document).ready(function(){
    $('.my_bxslider').bxSlider({
    	 auto: true,
    	speed: 100
    });
});
</script>
<script type="text/javascript">
$(document).ready(function(){
  var currentPosition = parseInt($(".slider_wrap").css("top"));
  
  $(window).scroll(function() {
    var position = $(window).scrollTop(); 
    $(".slider_wrap").stop().animate({"top":position+currentPosition+"px"},0);
  });
});
</script>
</body>
</html>