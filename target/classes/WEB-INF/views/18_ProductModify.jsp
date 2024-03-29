<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.ho.MK.product.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="/16_AdminForm">관리자 메인으로</a>
	<p></p>
	<h2>상품목록</h2>
	<table border = "1">
		<tr>
			<th>상품ID</th>
			<th>상품명</th>
			<th>상품이미지</th>
			<th>가격</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="pro" items="${list}">
			<tr>
				<td>
					<a href="/19_ProductDetail/${pro.pro_id}">${pro.pro_id}</a>
				</td>
				<td>
					<img src ="/resources/uploadimg/${pro.pro_img}" width="120px" height="110px">
				</td>
				<td>
					${pro.pro_name}
				</td>
				<td>
					${pro.pro_price}
				</td>
				<td>
					<a href="/ProductDelete/${pro.pro_id}">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>