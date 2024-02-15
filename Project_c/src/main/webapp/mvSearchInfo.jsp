<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	width: 80%;
	height: 100%;
}

.tb1 {
	width: auto;
	text-align: center;
	border: 1px solid #fff;
	border-spacing: 1px;
	font-family: 'Cairo', sans-serif;
	margin: auto;
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
</style>
<meta charset="UTF-8">
<title>검색결과</title>
</head>
<body>
	<c:if test="${list != null}">
		<table class="tb1">
			<tr>
				<th>순위</th>
				<th>포스터</th>
				<th>제목</th>
				<th>감독</th>
				<th>예매율</th>
			</tr>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td class="td1">${vo.mvRank }</td>
					<td class="td1"><img src="${vo.mvPos }" class="mvPos"></td>
					<td class="td1">${vo.mvTitle }</td>
					<td class="td1">${vo.mvDir }</td>
					<td class="td1">${vo.mvScore }</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>