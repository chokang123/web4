<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
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



.main-background {
    width: 100%;
    height: 500px;
    background-image: url(../img/background2.png);
    background-size: 100%;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    padding: 1px;
 
}

.main-title {
    color: white;
    font-size: 60px;
    margin-top: 100px;
    text-align: center;
    letter-spacing: 4px;

}

.para-title {
    color: white;
    font-size: 20px;
    letter-spacing: 7px;
    text-align: center;
}


.article-container {
    width: 1000px;
    margin-top: 40px;
    font-size: 27px;
    margin-bottom: 400px;
   
}


.article-title{
    margin-left: 30px;
}
.article-btn {
     padding: 4px 32px 4px 15px;
    font-size: 14px;
    color: #222;
    line-height: 1.429em;
    background: transparent url(/imgage/b.png) calc(100% - 7px) center/8px 13px scroll no-repeat;
    border: 1px solid #e2e2e2;
    border-radius: 15px;
    box-shadow: 1px 1px 1px 0 rgba(0, 0, 0, 0.05);
}

.article-card{
    text-align: center;
    margin-top: 20px;
}
.article-card-each{
    width: 20%;
    float: left;
}
.article-card-each2{
    width: 25%;
    float: left;
}
.article-img{
    width: 80%;
    border-radius: 10px;
    opacity: 1;
	-webkit-transition: .5s ease-in-out;
	transition: .5s ease-in-out;
    position: relative;
}
.article-img:hover{
	opacity: .5;
	
}
.article-img2{
    width: 80%;
    border-radius: 10px;
}
.article-img2:hover{
	opacity: .5;
	
}
.article-content{
    margin: -20px;
    font-size: 20px;
    
}
.article-time{
margin: -20px;
    font-size: 15px;
}
.article-time2{
margin: -20px;
    font-size: 12px;
}



.article-2-img{
    float: left;
    width: 50%;
    margin-top: 20px;
    margin-left: 20px;
}

.float-l {
    font-size: 20px;
    float: left;
}
.w-40-r {
    font-size: 20px;
    float: right;
}

.img-style{
    width:80%; 
    border-radius: 20px;
}
.img-style2{
    width:50%; 
    border-radius: 20px;
    float: left;
}

.form-background {
    padding: 20px;
}
.form-white {
    background-color: white;
    padding: 30px;
    width: 80%;
    margin: auto;
}
.form-input {
    width: 100%;
    padding: 10px;
    font-size: 20px;
    border: 1px solid black;
    border-radius: 5px;
}

.w-50 {
    width: 50%;
    float: left;
    padding: 10px;
}
.w-100 {
    width: 100%;
    padding: 10px;
}
.form-long {
    height: 50%;
    font-size: 17px;
}
.send-button {
    width: 30%;
    padding: 10px;
    display: block;
    margin-left: auto;
    border: 1px solid black;
    border-radius: 5px;
}


.btn-area {
    margin-top: 30px;
}
.btn-area button {
    width: 100%;
    height: 50px;
    background: #153243;
    background: black;
    color: white;
    border-radius: 25px;
    border: none;
    font-size: 20px;
    cursor: pointer;
}
.detail-body {
    margin-top: 25px;
}
.info-box {
    width: 40%;
    height: 800px;
    padding: 25px;
    float: left;
}
.info-box img {
    width: 70%;
}
.detail-end {
    padding: 15px;
    clear: both;
}
.video-back{
    background-color: black;
    padding-left: 22%;
    
}
heaader{
            width: 65%;
            margin: 0 auto;
            margin: 0,70px,70px,0;
}
.specialHall{
	font-size: 28px;
  text-align: justify;
text-align-last: left;
-moz-text-align-last: left; 
    padding: 19px 15px 19px 19px;

}

     .special2{
	    padding: 2px 7px;
    font-size: 14px;
    color: #666;
    line-height: 1.429em;
    background-color: #f6f6f6;
    border-radius: 5px;
}
.egg{
	width: 12px;
	height: 12px;
	
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <header class="heaader-container">
        <div class="heaader-item heaader-main"><a href="main.jsp"> <img class="article-img" src="image/logo.png"></a></div>
        <div class="sub">CULTUREPLEX</div>
        <div style="flex-grow:1"></div>
        
        <c:choose> 
        <c:when test="${sessionScope.data.mbId!=null }">
         <div class="heaader-item"><a href="logout.do"><img src="image/loginPassword.png" width="36" height="36" >로그아웃</a></div>
        <div class="heaader-item"><a href="mypage.jsp"><img src="image/loginMember.png" width="36" height="36" >MY CGV</a></div>
         <div class="heaader-item"><a href="###"><img src="image/loginCustomer.png" width="36" height="36" >고객센터</a></div>
        </c:when>
        <c:otherwise>
         <div class="heaader-item"><a href="login.jsp"><img src="image/loginPassword.png" width="36" height="36" > 로그인</a></div>
        <div class="heaader-item"><a href="signup.jsp"><img src="image/loginJoin.png" width="36" height="36" >회원가입</a></div>
        <div class="heaader-item"><a href="mypage.jsp"><img src="image/loginMember.png" width="36" height="36" >MY CGV</a></div>
         <div class="heaader-item"><a href="###"><img src="image/loginCustomer.png" width="36" height="36" >고객센터</a></div>
        </c:otherwise>
        </c:choose>
       
       

    </header>
    <hr />
    <nav class="nav-container">
        <div class="nav-item"><a href="mvList.do">영화</a></div>
        <div class="nav-item"><a href="###">극장</a></div>
        <div class="nav-item"><a href="###">예매</a></div>
        <div class="nav-item"><a href="mvSearch.jsp">검색</a></div>
    </nav>
</body>
</html>