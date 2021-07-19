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
 	
	.Best_Box{
		width: 1100px; margin-top: 30px; margin-bottom: 30px;
	}
	.Best_width{
		width:900px;  margin-top: 30px; margin-bottom: 30px;
	}
	.Best_box2{
	display :flex;	flex-direction:row; margin-top: 30px;
	}
	.Best_name{
		font-weight: bold;
	}
	
</style>
</head>
<body>
<c:import url="/WEB-INF/views/02_Top.jsp"/>
	<div class = "Best_box">
		<div class="Best_width">
			<p style ="font-size : 14px; font-weight : bold;">베스트</p>
			<p style="font-size : 12px; color : #5F0080;  font-weight : bold;">전체보기 </p>
			<div class="Best_box2">
			<c:forEach var = "pro" items ="${list}">
				<figure id ="product">
					<form:form method="post" action="/21_BestDetail" commandName="pro">
					<form:button>
					<img src ="/resources/uploadimg/${pro.pro_img}" width="250px" height ="230px"/>
					<form:hidden path="pro_id" value="${pro.pro_id}"/>
					</form:button>
					</form:form>
					<div class="Best_name">
					${pro.pro_name}<br>
					<fmt:formatNumber value="${pro.pro_price}" pattern="#,###" />
					</div>
				</figure>
			</c:forEach>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/03_Bottom.jsp"/>
	<script>
	</script>
</body>
</html>