
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" type="image/png" sizes="16x16"	href="image/favicon-16x16.png">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	
	<style>
	
	body {
    margin: 0px;
    font-family: 'Gowun Dodum', sans-serif;
    box-sizing: border-box;
}

tr:hover{
	background-color: red;
}

</style>
    <meta charset="UTF-8">
</head>

<body>

  <jsp:include page="header.jsp" />
  <hr>
  <br><br>
  <div style=" width:50%; margin: 0 auto">
	  <c:forEach var="vo" items="${data}">
	  <input type="text" id="showME" readonly="readonly" name="showME" value="${vo.no }" hidden="hidden">
	  <div style="width: 100%;height: 50px; background-color: lightgray; padding: 8px;">
	  <h2 style="height: 25px; float:left;">${vo.title }</h2><p style="float:right;">${vo.date }</p>
	  </div>
	  <br>
	  <div style="height: 600px;">
	  <div style="width: 100%; text-align: center;" >
	  <img src="upload/${vo.file}" style="height: 400px;border-radius: 5px" ></div><br><br>
	  
	  	${vo.content }
	  	
	  </div>
	  
		 </c:forEach>
		 <div style="width: 100%; height:100px;">
		 	 <form action="boardSub.do" id="boardSub" method="post">
		 	 <input type="text" id="contentno" readonly="readonly" name="contentno" value="" hidden="hidden">
		 	 <input type="text" id="bid" readonly="readonly" name="bid" value="${sessionScope.data.mbId}" hidden="hidden">
				 <textarea id="subText" name="subText" style="width: 70%; height:100px; float: left; resize: none; padding: 10px;"></textarea>
				 <input id="subBtn" type="button" id="post" style="height: 100px; width:10%; float: left;" value="전송">
			 </form>
		 </div>
		 <br>
		 <c:forEach var="svo" items="${list}">
		 	<div style="background-color: #ECECEC; width: 100%;  height: 150px; padding: 10px; border-radius: 10px;">
		 		<span style="font-size: 1.4em;"><b>${svo.autor}</b></span>&nbsp;<span  style="font-size: 0.8em;">${svo.sandTime}</span>
		 		<hr>
		 		<p> ${svo.content} </p>
		 	</div>
		 	<br>
		 </c:forEach>
		 <br>
		 
<hr>
<input type="button" id="back" value="목록으로">
       </div>
    </body>
    <script>
    	$("#back").on("click",function(){
    		location.href = "boardlist.do";
    	});
    	$("#subBtn").on("click",function(){
    		var text = $("#subText").val();
    		var no = $("#showME").attr('value');
    		$("#contentno").val(no);
    		$("#boardSub").submit();
    		
    	});
    </script>
</html>