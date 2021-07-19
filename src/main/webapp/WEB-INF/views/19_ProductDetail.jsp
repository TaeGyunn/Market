<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>상품 수정</p>
	<br>
	<form:form action=""  enctype="multipart/form-data" method="post" commandName="pro">
		<table border="1">
			<tr>
				<td colspan = "2" align="right">
				<a href="/16_AdminForm">관리자 메인으로</a>
				</td>
			</tr>
			<tr>
				<td width="100">분류 선택</td>
				<td width="400">
					<form:select path="pro_kind">
						<option value="냉동식품">냉동식품</option>
						<option value="냉장식품">냉장식품</option>
						<option value="실온식품">실온식품</option>
					</form:select>
				</td>
			</tr>
			<tr>
				<td width="100">제 목</td>
				<td width="400">
					<form:input size="50" maxlength="50" path="pro_name" placeholder="${pro_name}"/>
				</td>
			</tr>
			<tr>
				<td width="100">가 격</td>
				<td width="400">
					<form:input size="10" maxlength="9" path="pro_price" placeholder="${pro_price}"/>원
				</td>
			</tr>
			<tr>
				<td width="100">수 량</td>
				<td width="400">
					<form:input size="10" maxlength="9" path="pro_unit" placeholder="${pro_unit}"/>개
				</td>
			</tr>
			<tr>
				<td width="100">포 장</td>
				<td width="400">
					<form:select path="pro_packaging">
						<option value="종이포장">종이포장</option>
						<option value="냉온포장">냉온포장</option>
					</form:select>
				</td>
			</tr>
			<tr>
				<td width="100">중 량</td>
				<td width="400">
					<form:input size="10" maxlength="10" path="pro_weight" placeholder="${pro_weight}"/>
				</td>
			</tr>
			<tr>
				<td width="100">이미지</td>
				<td width="400">
					<input type="file" name ="pro_image" maxlength="500" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="상품수정">
				</td>
			</tr>
		</table>
	</form:form></body>
</html>