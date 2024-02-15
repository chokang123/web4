<%@page import="java.util.ArrayList"%>
<%@page import="vo.MovieVO"%>
<%@page import="dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<style>
	body {
    margin: 0px;
    font-family: 'Gowun Dodum', sans-serif;
    box-sizing: border-box;
}

div,
input,
textarea {
    box-sizing: border-box;
}
a{
    text-decoration: none;
    color: black;
}
.container {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 100px;
}

.heaader-container {
    display: flex;
    height: 80px;
    align-items: center;
    padding: 10px;
}

.heaader-main {
    margin-left: 25px;
    font-size: 40px !important;
    letter-spacing: 4px;
    font-family: 'Black Han Sans', sans-serif;
}

.-sub {
    margin-left: -20px;
}

.heaader-item {
    margin-right: 25px;
    font-size: 20px;
    cursor: pointer;    
}

.nav-container {
    display: flex;
    height: 40px;
    align-items: center;
    padding: 10px;
    justify-content: center;
    

}
  #nav-item a:hover{color: red;}

.nav-item {
    margin: 60px;
    font-size: 20px;
    cursor: pointer;
}

heaader{
            width: 65%;
            margin: 0 auto;
            margin: 0,70px,70px,0;
}

.sub{
	color: white;
}

.title{
	color: white;
	font-weight: 900;
	font-size: 1.2em;
}

</style>
    <meta charset="UTF-8">
  
</head>

<body>
	<%
	request.setCharacterEncoding("utf-8");
	String CGVMv = request.getParameter("CGVMv");
	String CGVCenter = request.getParameter("CGVCenter");
	String CGVDay = request.getParameter("CGVDay");
	String CGVTime = request.getParameter("CGVTime");
	String CGVSit = request.getParameter("CGVSit");
	%>
    <heaader class="heaader-container">
        <div class="heaader-item heaader-main"><a href="login.html"> <img class="article-img" src="image/logo.png"></a></div>
        <div class="-sub">CULTUREPLEX</div>
        <div style="flex-grow:1"></div>
        <div class="heaader-item"><a href="login.html"> 로그인</a></div>
        <div class="heaader-item"><a href="signup.html">회원가입</a></div>
        <div class="heaader-item"><a href="mypage.html">MY CGV</a></div>

    </heaader>
    <hr />
    <nav class="nav-container">
        <div class="nav-item"><a href="###">영화</a></div>
        <div class="nav-item"><a href="###">극장</a></div>
        <div class="nav-item"><a href="###">예매</a></div>
        <div class="nav-item"><a href="###">이벤트</a></div>
    </nav>
    <hr>
    	<h1 style="text-align: center;">예매성공!</h1>
    	<div style="width: 700px;height: 300px; background-color: red; margin: 0 auto; padding: 15px; border-radius: 10px">
    		<span class="sub">상영관: </span><span class="title"><%= CGVCenter %></span><br>
    		<span class="sub">영화: </span><span class="title"><%= CGVMv %></span><br>
    		<span class="sub">좌석: </span><span class="title"><%= CGVSit %></span><br>
    		<span class="sub">상영시간: </span><span class="title"><%= CGVTime %></span><br>
    		<span class="sub">상영일자: </span><span class="title"><%= CGVDay %></span>
    	</div>
    </body>
    </html>