<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: auto;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  margin: auto;
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

</style>
<meta charset="UTF-8">
<title>영화순위</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<table>
		<thead>
			<tr>
				<th>순위</th>
				<th>포스터</th>
				<th>제목</th>
				<th>감독</th>
				<th>예매율</th>
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
</body>
</html>