<%@page import="java.util.Date"%>
<%@page import="vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   request.setAttribute("msg", "안녕하세요");

   String content = "<button onclick='fn();'>클릭</button>";
   content += "<script>";
   content += "function fn() { ";
   content += "   alert('실행됨'); ";
   content += "} ";
   content += "</script>";
   request.setAttribute("content", content);
   
	request.setAttribute("score", 100);
	request.setAttribute("score2", 77);
	session.setAttribute("loginId", "나옹이다옹");
//	session.invalidate();  //세션 폐기

	String[] depts = {"영업팀", "기술팀", "개발1팀", "개발2팀"};
	request.setAttribute("depts", depts);
	
	List<Product> products = new ArrayList<>();
	products.add(new Product(10, "연필", "모나미", 1500, 0.15, 10, new Date()));
	products.add(new Product(20, "크레파스", "모닝글로리", 7500, 0.15, 15, new Date()));
	products.add(new Product(30, "공책", "모닝글로리", 2500, 0.15, 200, new Date()));
	products.add(new Product(30, "공책", "모닝글로리", 2500, 0.15, 200, new Date()));
	products.add(new Product(30, "공책", "모닝글로리", 2500, 0.15, 200, new Date()));
	products.add(new Product(30, "공책", "모닝글로리", 2500, 0.15, 200, new Date()));
	products.add(new Product(30, "공책", "모닝글로리", 2500, 0.15, 200, new Date()));
	request.setAttribute("products", products);
   
%>
<!doctype html>
<html lang="ko">
<head>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
   <h1>core 태그 라이브러리</h1>
   
   <h3>out 태그</h3>
   <p>값을 표현하는 태그이다.</p>
   <p>out태그로 표현 : <c:out value="${msg }" /></p>
   <p>EL로 표현 -> ${msg }</p>
   <p>out태그로 표현 : <c:out value="${content }" /></p> 
   <p>EL로 표현 -> ${content }</p>
   
	<h3>if 태그</h3>
	<p>제어문을 대신한다. else태그는 지원하지 않는다.</p>
	<p>test 속성의 EL 표현식 값이 true로 판정되면 if태그의 컨텐츠가 화면에 출력된다.</p>
	<c:if test="${score >= 60 }">
		<p>축하한다옹 합격이다옹</p>
	</c:if>
	<c:if test="${score2 < 60 }">
		<p>불합격이다옹</p>
	</c:if>
	<c:if test="${not empty loginId }">
		<p>${loginId }님 환영한다옹</p>
	</c:if>
   
   <h3>choose ~ when ~ otherwise</h3>
   <p>choose ~ when ~ otherwise 태그는 if ~ else if ~ else if ~ else문을 대신한다.</p>
   <p>when과 otherwise태그는 반드시 choose태그 안에 위치한다.</p>
   <p>when태그는 처리할 조건의 개수만큼 작성할 수 있다.</p>
   <p>otherwise태그는 생략할 수 있다. otherwise태그는 반드시 맨 마지막 when 태그 다음에 작성한다.s</p>
   <c:choose>
      <c:when test="${score >= 90 }">
         <p>${score }점수의 등급은 A입니다.</p>
      </c:when>
      <c:when test="${score >= 80 }">
         <p>${score }점수의 등급은 B입니다.</p>
      </c:when>
      <c:when test="${score >= 70 }">
         <p>${score }점수의 등급은 C입니다.</p>
      </c:when>
      <c:when test="${score >= 60 }">
         <p>${score }점수의 등급은 D입니다.</p>
      </c:when>
      <c:otherwise>
         <p>${score }점수의 등급은 F입니다.</p>
      </c:otherwise>
   </c:choose>
   <c:choose>
      <c:when test="${empty loginId }">
         <div>
            <a href="loginform.hta">로그인</a>
            <a href="registerform.hta">회원가입</a>
         </div>
      </c:when>
      <c:otherwise>
         <div>
            <span>${loginId }님 환영합니다.</span>
            <a href="Logout.hta">로그아웃</a>
         </div>
      </c:otherwise>
   </c:choose>
   
   <h3>forEach 태그</h3>
   <p>반복문을 대신한다.</p>
   <h4>var ~ items 용법</h4>
   <p>items 속성의 EL 표현식으로 검색된 배열 혹은 콜렉션에 저장된 값을 개수만큼 반복수행한다.</p>
   
   <p>속성으로 저장된 배열객체의 값 출력하기</p>
   <ul>
      <c:forEach var="deptName" items="${depts }">
         <li>${deptName }</li>
      </c:forEach>
   </ul>
   <table class="table" border="1" style="width: 100%;">
      <thead>
         <tr>
            <th>index</th>
            <th>count</th>
            <th>first</th>
            <th>last</th>
            <th>번호</th>
            <th>상품명</th>
            <th>제조사</th>
            <th>가격</th>
            <th>할인율</th>
            <th>재고수량</th>
            <th>등록일</th> 
         </tr>
      </thead>
      <tbody>
         <c:forEach var="product" items="${products }" varStatus="loop">
            <c:set var="discountPrice" value="${product.price*(1-product.discountRate) }" />
            <tr class="${loop.first ? 'table-secondary' : '' }">
               <td>${loop.index }</td>
               <td>${loop.count }</td>
               <td>${loop.first }</td>
               <td>${loop.last }</td>
               <td>${product.no }</td>
               <td>${product.name }</td>
               <td>${product.maker }</td>
               <td><strong>${discountPrice } 원</strong> (${product.price }원)</td>
               <td>${product.price }</td>
               <td>${product.discountRate }</td>
               <td>${product.stock }</td>
               <td>${product.createDate }</td>
            </tr>
         </c:forEach>
      </tbody>
   </table>
   
   
   <h4>var ~ begin ~ end 용법</h4>
   <p>begin, end 속성에서 지정한 시작값, 끝값의 범위만큼 반복수행한다</p>
   <ul>
      <c:forEach var="num" begin="1" end="10">
         [<a href="list.hta?page=${num }">${num }</a>]
      </c:forEach>
   </ul>
   
   <h3>set, remove 태그</h3>
   <p>set 태그는 지정된 이름과 값을 속성으로 저장시키는 태그다.</p>
   <p>remove 태그는 지정된 이름의 속성을 삭제하는 태그다.</p>
   <c:set var="value1" value="100"/>					 <!-- pageContext객체에 속성명:value1, 속성값:100이 저장됨 -->
   <c:set var="value2" value="200" scope="page"/>        <!-- pageContext객체에 속성명:value2, 속성값:200이 저장됨 -->
   <c:set var="value3" value="300" scope="request"/>     <!-- HttpServletRequest객체에 속성명:value3, 속성값:300이 저장됨 -->
   <c:set var="value4" value="400" scope="session"/>	 <!-- HttpSession객체에 속성명:value4, 속성값:400이 저장됨 -->
   <c:set var="value5" value="500" scope="application"/> <!-- ServletContext객체에 속성명:value5, 속성값:500이 저장됨 -->
   <p>${value1 } ${pageScope.value1 } </p>
   <p>${value2 } ${pageScope.value2 } </p>
   <p>${value3 } ${pageScope.value3 } </p>
   <p>${value4 } ${pageScope.value4 } </p>
   <p>${value5 } ${pageScope.value5 } </p>
   <p>${value1 } ${requestScope.value1 }</p>
   <p>${value2 } ${requestScope.value2 }</p>
   <p>${value3 } ${requestScope.value3 }</p>
   <p>${value4 } ${requestScope.value4 }</p>
   <p>${value5 } ${requestScope.value5 }</p>
   
   <p>삭제하고 다시 출력해보기</p>
   <c:remove var="value1"/>
   <c:remove var="value2"/>
   <c:remove var="value3"/>
   <c:remove var="value4"/>
   <c:remove var="value5"/>
   <p>${value1 } </p>
   <p>${value2 } </p>
   <p>${value3 } </p>
   <p>${value4 } </p>
   <p>${value5 } </p>
</body>
</html>
