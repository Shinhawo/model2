<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setAttribute("totalPrice", 10000);
	request.setAttribute("amount", 3);
	request.setAttribute("orderDate", new Date());
%>
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
	<h1>fmt 태그 라이브러리</h1>
	
	<h3>formatNumber 태그</h3>
	<p>숫자를 지정한 형식의 포맷으로 출력한다.</p>
	<p>총구매가격 : ${totalPrice } 원</p>
	<p>총구매가격 : <fmt:formatNumber value="${totalPrice }" /> 원</p>
	<p>한개당가격 : ${totalPrice/3 } 원</p>
	<p>한개당가격 : <fmt:formatNumber value="${totalPrice/amount }" />원 </p>
	<p>한개당가격 : <fmt:formatNumber value="${totalPrice/amount }" pattern="#,###" />원 </p>
	<p>한개당가격 : <fmt:formatNumber value="${totalPrice/amount }" pattern="#,###.#" />원 </p>
	
	<p>formatDate 태그</p>
	<p>날짜와 시간정보를 지정한 형식의 포맷으로 출력한다.</p>
	<p>주문날짜 : ${orderDate }</p>
	<p>주문날짜 : <fmt:formatDate value="${orderDate }" /></p>
	<p>주문날짜 : <fmt:formatDate value="${orderDate }" pattern="yyyy-MM-dd"/></p>
	<p>주문날짜 : <fmt:formatDate value="${orderDate }" pattern="yyyy-MM-dd HH:mm:ss"/></p>
	<p>주문날짜 : <fmt:formatDate value="${orderDate }" pattern="yyyy년 MM월 d일 EEEE HH:mm:ss"/></p>
	<p>주문날짜 : <fmt:formatDate value="${orderDate }" pattern="a hh:mm:ss"/></p>


</body>
</html>