<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style>
body {
	margin: 0px;
	font-family: 'Gowun Dodum', sans-serif;
	box-sizing: border-box;
}

div, input, textarea {
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color: black;
}

.container {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
	position: relative;

	/* 16:9 화면비율 */
}

.heaader-container {
	display: flex;
	height: 80px;
	align-items: center;
	padding: 10px;
	width: 70%;
	margin: 0 auto;
}

.heaader-main {
	margin-left: 25px;
	font-size: 40px !important;
	letter-spacing: 4px;
	font-family: 'Black Han Sans', sans-serif;
}

.sub {
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

.nav-item a:hover {
	color: red;
}

.nav-item {
	margin: 60px;
	font-size: 20px;
	cursor: pointer;
}

.main-background {
	width: 100%;
	height: 500px;
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
	margin-bottom: 350px;
}

.article-title {
	margin-left: 30px;
}

.article-btn {
	padding: 4px 32px 4px 15px;
	font-size: 14px;
	color: #222;
	line-height: 1.429em;
	background: transparent url(image/b.png) calc(100% - 7px) center/8px
		13px scroll no-repeat;
	border: 1px solid #e2e2e2;
	border-radius: 15px;
	box-shadow: 1px 1px 1px 0 rgba(0, 0, 0, 0.05);
}

.article-card {
	text-align: center;
	margin-top: 20px;
}

.article-card-each {
	width: 20%;
	float: left;
}

.article-card-each2 {
	width: 25%;
	float: left;
}

.article-img {
	width: 80%;
	border-radius: 10px;
	opacity: 1;
	-webkit-transition: .5s ease-in-out;
	transition: .5s ease-in-out;
	position: relative;
}

.article-img:hover {
	opacity: .5;
}

.article-img2 {
	width: 80%;
	border-radius: 10px;
}

.article-content {
	margin: -20px;
	font-size: 20px;
}

.article-time {
	margin: -20px;
	font-size: 15px;
}

.article-time2 {
	margin: -20px;
	font-size: 12px;
}

.article-2-img {
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

.img-style {
	width: 80%;
	border-radius: 20px;
}

.img-style2 {
	width: 50%;
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

.video-back {
	background-color: black;
	padding-left: 22%;
}

.heaader {
	width: 65%;
	margin: 0 auto;
	margin: 0, 70px, 70px, 0;
}

.specialHall {
	font-size: 28px;
	text-align: justify;
	text-align-last: left;
	-moz-text-align-last: left;
	padding: 19px 15px 19px 19px;
}

.special2 {
	padding: 2px 7px;
	font-size: 14px;
	color: #666;
	line-height: 1.429em;
	background-color: #f6f6f6;
	border-radius: 5px;
}

.egg {
	width: 12px;
	height: 12px;
}

.article-card-each:hover .overlay-text {
	display: block;
}

.article-card-each:hover .overlay-text2 {
	display: block;
}

.article-card-each:hover .overlay-text3 {
	display: block;
}

.article-card-each:hover .overlay-text4 {
	display: block;
}

.article-card-each:hover .overlay-text5 {
	display: block;
}

.overlay-text {
	display: none;
	position: absolute;
	background-image: linear-gradient(white 50%, red 50%);
	opacity: 80%;
	padding: 10px;
	font-size: 16px;
	text-align: center;
	border-radius: 20px;
	z-index: 999;
	color: gray;
	top: 120px;
	right: 86%;
}

.overlay-text2 {
	display: none;
	position: absolute;
	background-image: linear-gradient(white 50%, red 50%);
	opacity: 80%;
	padding: 10px;
	font-size: 16px;
	text-align: center;
	border-radius: 20px;
	z-index: 999;
	color: gray;
	top: 120px;
	right: 66%;
}

.overlay-text3 {
	display: none;
	position: absolute;
	background-image: linear-gradient(white 50%, red 50%);
	opacity: 80%;
	padding: 10px;
	font-size: 16px;
	text-align: center;
	border-radius: 20px;
	z-index: 999;
	color: gray;
	top: 120px;
	right: 46%;
}

.overlay-text4 {
	display: none;
	position: absolute;
	background-image: linear-gradient(white 50%, red 50%);
	opacity: 80%;
	padding: 10px;
	font-size: 16px;
	text-align: center;
	border-radius: 20px;
	z-index: 999;
	color: gray;
	top: 120px;
	right: 26%;
}

.overlay-text5 {
	display: none;
	position: absolute;
	background-image: linear-gradient(white 50%, red 50%);
	opacity: 80%;
	padding: 10px;
	font-size: 16px;
	text-align: center;
	border-radius: 20px;
	z-index: 999;
	color: gray;
	top: 120px;
	right: 6%;
}
</style>
<meta charset="UTF-8">

</head>

<body>
	<jsp:include page="header.jsp" />
	<div class="video-back">
		<video autoplay="" muted="" loop>
			<source
				src="https://adimg.cgv.co.kr/images/202312/Alienoid/0102_Alienoid_1080x608_PC.mp4"
				type="video/mp4">
		</video>
	</div>

	<article class="container article-container">
		<div class="article-title">
			현재 상영 영화 목록
			<button class="article-btn">
				<a href="moviefullview.jsp">전체보기 </a>
			</button>
		</div>
		<div class="article-card">
			<div class="article-card-each">
				<div class="image-container">
					<img class="article-img" src="image/1.jpg" alt="Image Description">
					<div class="overlay-text">
						<p>
							<a href="####">예매하기</a>
						</p>
						<p>
							<a href="moviedetailedpage1.jsp">상세정보</a>
						</p>
					</div>
				</div>
				<div class="article-content">
					<p>외계+인 2부</p>
					<p class="article-time">
						<img class="egg" src="image/egg.png">
						<p1>99% </p1>
						예매율:39.7%
					</p>
				</div>
			</div>
			<div class="article-card-each">
				<div class="image-container">
					<img class="article-img" src="image/2.jpg">
					<div class="overlay-text2">
						<p>
							<a href="####">예매하기</a>
						</p>
						<p>
							<a href="moviedetailedpage2.jsp">상세정보</a>
						</p>
					</div>
				</div>
				<div class="article-content">
					<p>지오디마스터피스</p>
					<p class="article-time">
						<img class="egg" img src="image/egg.png">
						<p1>99% &nbsp;&nbsp;&nbsp;</p1>
						예매율:12.4%
					</p>
				</div>
			</div>
			<div class="article-card-each">
				<div class="image-container">
					<img class="article-img" src="image/3.jpg">
					<div class="overlay-text3">
						<p>
							<a href="####">예매하기</a>
						</p>
						<p>
							<a href="moviedetailedpage3.jsp">상세정보</a>
						</p>
					</div>
				</div>
				<div class="article-content">
					<p>위시</p>
					<p class="article-time">
						<img class="egg" img src="image/egg.png">
						<p1>86% &nbsp;&nbsp;&nbsp;</p1>
						예매율:12.4%
					</p>
				</div>
			</div>
			<div class="article-card-each">
				<div class="image-container">
					<img class="article-img" src="image/4.jpg">
					<div class="overlay-text4">
						<p>
							<a href="####">예매하기</a>
						</p>
						<p>
							<a href="moviedetailedpage4.jsp">상세정보</a>
						</p>
					</div>
				</div>
				<div class="article-content">
					<p>노량-죽음의 바다</p>
					<p class="article-time">
						<img class="egg" img src="image/egg.png">
						<p1>99% &nbsp;&nbsp;&nbsp;</p1>
						예매율:4.5%
					</p>
				</div>
			</div>
			<div class="article-card-each">
				<div class="image-container">
					<img class="article-img" src="image/5.jpg">
					<div class="overlay-text5">
						<p>
							<a href="####">예매하기</a>
						</p>
						<p>
							<a href="moviedetailedpage5.jsp">상세정보</a>
						</p>
					</div>
				</div>
				<div class="article-content">
					<p>서울의 봄</p>
					<p class="article-time">
						<img class="egg" img src="image/egg.png">
						<p1>93% &nbsp;&nbsp;&nbsp;</p1>
						예매율:4.4%
					</p>
				</div>
			</div>
		</div>
		</div>
	</article>

	<article class="container article-container">
		<div class="article-title">
			EVENT
			<button class="article-btn">
				<a href="eventfullview.jsp">전체보기 </a>
			</button>
		</div>
		<div class="article-card">
			<div class="article-card-each2">
				<a href="eventdetailedpage1.jsp"><img class="article-img2" src="image/E1.jpg"></a>
				<div class="article-content">
					<p>4DX 리미티드포스터</p>
					<tr>
						<p class="article-time2">2023.12.17~2024.01.09</p>
				</div>
			</div>
			<div class="article-card-each2">
				<a href="eventdetailedpage2.jsp"><img class="article-img2" src="image/E2.png"></a>
				<div class="article-content">
					<p>전국 X 자랑</p>
					<tr>
						<p class="article-time2">2023.12.08~2024.01.12</p>
				</div>
			</div>
			<div class="article-card-each2">
				<a href="eventdetailedpage3.jsp"><img class="article-img2" src="image/E3.jpg"></a>
				<div class="article-content">
					<p>이모티콘 이벤트</p>
					<tr>
						<p class="article-time2">2023.12.21~2024.01.14</p>
				</div>
			</div>
			<div class="article-card-each2">
				<a href="eventdetailedpage4.jsp"><img class="article-img2" src="image/E4.jpg"></a>
				<div class="article-content">
					<p>4DX 스페셜굿즈</p>
					<tr>
						<p class="article-time2">2023.12.29~2024.01.16</p>
				</div>
			</div>
		</div>
		</div>
	</article>
	<article class="container article-container"
		style="margin-top: -100px;">
		<div>
			특별상영관
			<button class="article-btn">
				<a href="###">전체보기 
			</button>
		</div>

		<div>
			<div class="article-2-img">
				<img style="width: 80%; border-radius: 20px;" src="image/S1.png">
			</div>
			<tr>
				<table class="specialHall">

					<hr>
					<th class="special1">SUITE CINEMA</th>
					<th class="special2">#호텔 컨셉의 프리미엄관</th>
					<tr>
						<th class="special1">CINE LIVINGROOM</th>
						<th class="special2">#신개념 소설 상영관
						<th>
					<tr>
						<th class="special1">4DX</th class="special1">
						<th class="special2">#모션시트 #오감체험
						<th>
					<tr>
						<th class="special1">CINE de CHEF</th>
						<th class="special2">#쉐프가있는 오감체험
						<th>
				</table>
				<hr>
		</div>
	</article>

</body>
</html>
