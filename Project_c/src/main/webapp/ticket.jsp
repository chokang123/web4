<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="CGVMAP.CgvMapVO"%>
<%@page import="CGVMAP.CgvMapDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.MovieVO"%>
<%@page import="dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
.movie-select::-webkit-scrollbar {
	  display: none;
}
.m-select{
	width: 190px;
	font-size:80%;
	overflow:auto;
	white-space:nowrap;
	background-color: aqua;
	overflow: hidden;
	padding: 10px;
	text-overflow: ellipsis;
	float: left;
	line-height:10px;
	text-align:left;
	justify-content: center;
	
	
}

.day-select{
	width: 190px;
	font-size:80%;
	overflow:auto;
	white-space:nowrap;
	background-color: aqua;
	overflow: hidden;
	padding: 10px;
	text-overflow: ellipsis;
	float: left;
	line-height:10px;
	text-align:left;
	justify-content: center;
	
	
}
.v-select{
	width: 190px;
	font-size: 80%;
	overflow:auto;
	white-space:nowrap;
	background-color: aqua;
	overflow: hidden;
	padding: 10px;
	text-overflow: ellipsis;
	float: left;
	object-fit: contain;
	
}
.movie-buy{
	width: 80%;
	margin: 0 auto;
}
.rat-img{
	width: 20px;
}
.movie-time{
	padding: 10px;
}

.choose{
	padding: 10px;
	width: 150px;
	background-color: lime;
}
.choose-main{
	padding: 10px;
	width: 100px;
	background-color: olive;
	text-align: right;
	margin-right: 10px;
}
#CGVover{
	height: 500px;
	overflow: auto;
}
#CGVover ::-webkit-scrollbar {
	  display: hidden;
}

</style>
    <meta charset="UTF-8">
</head>

<body>

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
    <h1 style="text-align: center; margin: 0 auto; padding: 10px" >예매하기</h1>
    <p style="text-align: center;">자리선정과 결재를 단 한번에!</p>
    <div class="header-main" style=" margin: 0 auto; width: 850px; height:500px;">
	    <div class="movie-select" style="width: 210px ; overflow:auto; height:500px; float: left; border: solid 1px black; border-radius: 10px">
	    	<%
			MovieDAO dao = new MovieDAO();
			MovieVO vo = new MovieVO();
			String title = null;
			String pos = null;
			String rating = null;
			ArrayList<MovieVO> list = dao.selectAll(vo);
			for(int i=0;i<list.size();i++){
				vo = list.get(i);
				title=vo.getMvTitle();
				int Mv=vo.getMvRank();
				pos=vo.getMvPos();
				
				rating = vo.getMvInfo();
				String rat[] = rating.split(",");
				System.out.println(rat[0]);
				
				out.print("<span class='m-select' id='"+Mv+"'alt='"+title+"'>");
				if(rat[0].equals("전체관람가")){
					out.print("<img class='rat-img' src='image/ALL.svg'>");
				}else if(rat[0].equals("12세이상관람가")){
					out.print("<img class='rat-img' src='image/12.svg'>");
				}
				out.print("&nbsp;"+title+"</span>");
			}
			%>
	    </div>
	    <div class="movie-select" style="width: 280px ; overflow:auto;height:500px; float: left; border: solid 1px black">
	    	<div style="float: left">
	    		<%
	    		
	    			CgvMapDAO Cdao = new CgvMapDAO();
	    			CgvMapVO Cvo = new CgvMapVO();
	    			ArrayList<CgvMapVO> Cdatas = Cdao.group(Cvo);
	    			String cityDiv = null;
	    			for(int i=0;i<Cdatas.size();i++){
	    				Cvo = Cdatas.get(i);
	    				String City = Cvo.getCGVCity();
	    				out.print("<div>");
	    				if(City.equals("서울")){
	    					cityDiv = "seoul";
	    				}else if(City.equals("경기")){
	    					cityDiv = "gyeonggi";
	    				}else if(City.equals("부산/울산")){
	    					cityDiv = "busan";
	    				}
	    				out.print("<div class='choose-main' id='"+cityDiv+"'>");
	    				out.print(City);
	    				out.print("</div>");
	    				out.print("</div>");
	    			}
	    		%>
	    	</div>
	    	<div id="CGVover"></div>
	    </div>
	    <div class="movie-select" style="width: 70px ; overflow:auto; height:500px; float: left; border: solid 1px black">
		    <% 
		    	LocalDate now = LocalDate.now();
		    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM");      
		    	String formatedNow = now.format(formatter);
		    
		    	System.out.print(formatedNow);
		    %>
		    <div style="text-align: center; font-size: 150%;"><%= formatedNow %></div>
		    <%
		    	String morth = formatedNow;
		    	formatter = DateTimeFormatter.ofPattern("dd");
		    	formatedNow = now.format(formatter);
		    	
		    	GregorianCalendar today = new GregorianCalendar ( );
		    	int maxday = today.getActualMaximum((today.DAY_OF_MONTH));
	    		System.out.println(formatedNow);
		    	System.out.println(maxday);
		    	int formatterNow =Integer.parseInt(formatedNow);
		    	for(int i = formatterNow; i<=maxday ; i++){
		    		out.print("<span class='day-select' id='"+morth+"/"+i+"'>"+i+"</span>");
		    	}
		    %>
		    
	    </div>
	    <div class="movie-select" style="width: 250px ; margin: 0 auto; overflow:auto; height:500px; float: left; border: solid 1px black; background-color: aqua;">
		    
		    <div id="mv-time-slc" style="margin: 10px;">
		    <div style="text-align: center; font-size: 80%;">상영시간</div><br>
		    <input class="movie-time" type="button" value="9:00"><input class="movie-time" type="button" value="11:00">
		    <input class="movie-time" type="button" value="13:00"><input class="movie-time" type="button" value="15:00">
		    <input class="movie-time" type="button" value="16:00"><input class="movie-time" type="button" value="18:00"></div>
	    </div>
	 </div>
	 <hr>
	 <div class="movie-buy">
	 <form action="ticket2.jsp" method="post">
	 	<div hidden="hidden">
	    	<input type="text" id="movie-sel" name="movie-name">
	    	<input type="text" id="center-sel" name="movie-center">
	    	<input type="text" id="day-sel" name="movie-day">
	    	<input type="text" id="time-sel" name="movie-time">
    	</div>
	 	<div style="text-align: center;">결재를 합시다.</div>
	 	<input type="button" id="select-result" value="값 가져오기">
	 	<input type="submit" id="select-dir" value="다음">
	 	</form>
	 </div>
	    <script>
	    $(".m-select").hover(function() {
			$(this).css("background-color", "red");
	    },function(){
	    	$(this).css("background-color", "aqua");
		});
	    
	    $(".m-select").on("click", function() {
			var mv = $(this).attr('alt');
			$(this).css("background-color", "red");
			$(this).unbind('mouseenter mouseleave');
			$("#movie-sel").val(mv);
		});
	    
	    $(".choose-main").hover(function() {
			$(this).css("background-color", "red");
	    },function(){
	    	$(this).css("background-color", "aqua");
		}); 
	    
	    $(".day-select").on("click",function(){
	    	var day = $(this).attr('id');
	    	$("#day-sel").val(day);
	    	alert(day);
	    });
	    
	    $(".movie-time").on("click",function(){
	    	var time = $(this).attr('value');
	    	$("#time-sel").val(time);
	    	alert(time);
	    });
	    
	    $("#select-result").on("click",function(){
	    	var mvName = $("#movie-sel").val();
	    	if(mvName==""){
	    		swal({
	    		    title: "영화를 선택해주세요.",
	    		    icon: "error"
	    		});
	    		return false;
	    	}
	    	var center = $("#center-sel").val();
	    	if(center==""){
	    		swal({
	    			title: "상영관을 선택해주세요.",
	    		    icon: "error"
	    		});
	    		return false;
	    	}
	    	var day = $("#day-sel").val();
	    	if(day==""){
	    		swal({
	    			title: "상영일을 선택해주세요.",
	    		    icon: "error"
	    		});
	    		return false;
	    	}
	    	var time = $("#time-sel").val();
	    	if(time==""){
	    		swal({
	    			title: "시간을 선택해주세요.",
	    		    icon: "error"
	    		});
	    		return false;
	    	}
	    	alert(mvName+","+center+","+day+","+time);
	    	
	    });
	    
	    $(".choose-main").on("click",function(){
	   	 var map= $(this).text();
	   	 
	   	 var requestData = {
	   		SandData: map,
	   	 };
	   	 
		   	 $.ajax({
		   		 method: "GET",
		   		 url: "ticketCityDB.jsp",
		   		 dataType: 'html',
		   		 data: requestData,
		   		 success: function (data) {
	                $("#CGVover").html(data);
	                $("#CGVover").find(".choose").hover(function() {
	        			$(this).css("background-color", "red");
	        	    },function(){
	        	    	$(this).css("background-color", "aqua");
	        		});
	                $("#CGVover").find(".choose").on("click",function(){
	                	var CGVCenterName = $(this).html();
				    	alert(CGVCenterName);
				    	$("#center-sel").val(CGVCenterName);
				    	
				    });
	             },
	
		   	 });
		   	 	//$(".allCGV").hide();
		   		//$("#"+map+"CGV").show();
	     });
	    </script>
    </body>
    </html>