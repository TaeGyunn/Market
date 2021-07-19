<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{margin:0 auto;}
	form{
		margin-top:30px; margin-bottom:30px;
	}
	 button{
		width:160px; height:30px; border:1px solid #5F0080; border-radius:3px; cursur:pointer;
		color:white;	background-color:#5F0080;
	}
</style>
</head>
<body>
<c:import url="/WEB-INF/views/02_Top.jsp"/>
<form:form method="post" action="/" commandName="pro" name="form1">
	<table>
		<tr>
			<td>
				<img src ="/resources/uploadimg/${pro.pro_img}" width="340px" height ="300px"/>
			</td>
			<td>
				<table class="BestTable">
					<tr>
						<td>제품명</td>
						<td>${pro.pro_name}</td>
					</tr>
					<tr>
						<td>가격</td>
						<td><fmt:formatNumber value="${pro.pro_price}" pattern="#,###" />원</td>
					</tr>
					
					<tr>
						<td>중량/용량</td>
						<td>${pro.pro_weight}</td>
					</tr>
					<tr>
						<td>배송구분</td>
						<td>샛별배송/택배배송</td>
					</tr>
					<tr>
						<td>포장타입</td>
						<td>${pro.pro_packaging}</td>
					</tr>
					<tr>
						<td>유통기한</td>
						<td>출고일 기준, 유통기한 만기 8일 이상 남은 상품을 보내드립니다.(총유동기한:15일)</td>
					</tr>
					<tr>
						<td>구매수량</td>
						<td>
							<form:select path="pro_unit" id="cal">
								<c:forEach begin="1" end="10" var="i">
									<option value="${i}">${i}</option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					
					<tr>
						<td><form:button>장바구니 담기</form:button> </td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</form:form>
<c:import url="/WEB-INF/views/03_Bottom.jsp"/>

</body>
</html>