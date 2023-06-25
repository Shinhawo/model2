<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<fmt:bundle basename="resources.messages">
	<h1>국제화처리</h1>
	
	<table class="table">
		<thead>
			<tr>
				<th><fmt:message key="board.header.no" /></th>
				<th><fmt:message key="board.header.title" /></th>
				<th><fmt:message key="board.header.writer" /></th>
				<th><fmt:message key="board.header.date" /></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>국제화처리 연습</td>
				<td>홍길동</td>
				<td>2023-06-21</td>
			</tr>
			<tr>
				<td>1</td>
				<td>국제화처리 연습</td>
				<td>홍길동</td>
				<td>2023-06-21</td>
			</tr>
			<tr>
				<td>1</td>
				<td>국제화처리 연습</td>
				<td>홍길동</td>
				<td>2023-06-21</td>
			</tr>
			<tr>
				<td>1</td>
				<td>국제화처리 연습</td>
				<td>홍길동</td>
				<td>2023-06-21</td>
			</tr>
		</tbody>
	</table>
</fmt:bundle>
</body>
</html>