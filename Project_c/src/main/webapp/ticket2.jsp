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
.movie-select::-webkit-scrollbar {
	display: none;
}
.m-select{
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
#sit-box td{
	background-color: red;
	width: 30px;
	height: 30px;
	text-align: center;
	border-radius: 5px;
}

#sit-box .no{
	visibility : hidden;
}

#sit-box .use{
	background-color: gray;
	color: white;
}

#sit-box .slc{
	background-color: green;
	color: white;
}

#sit-box td:hover{
	background-color: black;
	color: white;
}

#sit-number{
	position: absolute;
	color: white;
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
    	<h1 style="text-align: center;">좌석을 선택해주세요.</h1>
    	<form action="ticketResult.jsp" method="post">
    	<fieldset style="width: 50%; margin: 0 auto">
    	<%
    		request.setCharacterEncoding("utf-8");
    		String CGVMv = request.getParameter("movie-name");
    		String CGVCenter = request.getParameter("movie-center");
    		String CGVDay = request.getParameter("movie-day");
    		String CGVTime = request.getParameter("movie-time");
    	%>
    	<div>
    	선택된 지역:<span id="CGVCenter"><%= CGVCenter %></span><br>
    	선택된 영화:<span id="CGVMv"><%= CGVMv %></span><br>
    	선택된 관람일:<span id="CGVDay"><%= CGVDay %></span> <br>
    	선택된 상영시간:<span id="CGVTime"><%= CGVTime %></span> <br></div>
    	<input type="text" id="CGVSit" name="CGVSit">
    	<div id="StartFrom" hidden="hidden"></div>
    	<br>
    	<div style="width: 550px; margin: 0 auto;">
    			<div style="text-align: center; margin: 0 auto; width: 400px; height: 30px; background-color: green; border-radius: 5px;">display</div>
    			<br>
    		<table id="sit-box">
    			<thead>
    				
    			</thead>
    			<tbody>
    				<%
    					char c = 'A';
    					int snum = 1;
    					for(int i=1;i<12;i++){
    						
    						out.print("<tr>"+"<th>"+c+"</th>");
    						for(int j=1;j<16;j++){
    							if(j==4){
    								out.print("<td class='no'>"+c+j+"</td>");
    							}else if(j==12){
    								out.print("<td class='no'>"+c+j+"</td>");
    							}else{
    								out.print("<td>"+c+j+"</td>");
    							}
    						}
    						c++;
    						out.print("</tr>");
    					}
    				%>    				
    			</tbody>
    		</table>
    	</div>
    	<input id="ticketBuy" type="submit" value="에매하기" style="float: right;">
    	</fieldset>
    	</form>
    	<script>
    		$("#sit-box td").on("click",function(){
    			var x = $(this).closest('tr').index();
    		    var y = $(this).closest('td').index();
    		    y--;
    		    var tValue = $('#sit-box tr:eq('+x+')>td:eq('+y+')').text();
    		    $("#CGVSit").val(tValue);
    		    $("#sit-box td").removeClass("slc");
    		    $(this).addClass("slc");
    		});
    		$("#ticketBuy").on("click",function(){
    			var CGVCenter = $("#CGVCenter").text();
    			var CGVTime = $("#CGVTime").text();
    			var CGVDay = $("#CGVDay").text();
    			var CGVMv = $("#CGVMv").text();
    			var CGVSit = $("#CGVSit").val();
    			if(CGVSit==""){
    				swal({
    	    			title: "좌석을 선택해주세요.",
    	    		    icon: "error"
    	    		});
    	    		return false;
    			}
    			$("#StartFrom").prepend('<input type="text" id="CGVCenter" name="CGVCenter" value='+CGVCenter+'>');
    			$("#StartFrom").prepend('<input type="text" id="CGVTime" name="CGVTime" value='+CGVTime+'>');
    			$("#StartFrom").prepend('<input type="text" id="CGVDay" name="CGVDay" value='+CGVDay+'>');
    			$("#StartFrom").prepend('<input type="text" id="CGVMv" name="CGVMv" value='+CGVMv+'>');
    		});
    	</script>
    </body>
    </html>