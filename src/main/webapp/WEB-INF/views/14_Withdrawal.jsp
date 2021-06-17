<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdraw</title>
<style>
	body{
		margin :0 auto;
	}
	.Mid_info{
		width:70%;  display:flex; margin-top:20px;
	}
	.Mid_info_left{
		max-width:250px;  height: 600px; margin-left:85px; margin-right:10px;
	}
	.Mid_info_left .box1{
		font-size:25px; font-weight:bold;
	}
	
	.Mid_info_left2{
		flex-direction: column; margin-top:40px;
	}
	.Mid_info_left2 .box2{
		height:50px; border : 1px solid whitesmoke; width:200px;
	}
	.Mid_info_left2 .box2 a{
		font-size: 17px; font-weight:bold; color:gray; margin-left:15px; text-decoration:none; line-height:3;
	}
	.Mid_info_left2 .box3{
	height:50px; border : 1px solid whitesmoke; width:200px;background-color:lightgray;
	}
	.Mid_info_left2 .box3 a{
		font-size: 17px; font-weight:bold; color:#5F0080; margin-left:15px; text-decoration:none; line-height:3;
	}
	
	.Mid_info_right{
		width:800px; height:700px; margin-left:20px;
	}
	.Mid_info_right p{
		font-weight:bold; font-size:22px; 
	}
	.Mid_info_right hr{
		border : 1px solid black; background:black; margin-top:35px;
	}
	.Mid_info_right .box3 hr{
	border : 1px solid lightgrey; background:lightgrey;
	}
	.Mid_info_right table{
		border-collapse : separate;  border-spacing :30px 20px; margin-left:80px;
	}
	.Mid_info_right table tr{
		font-size:14px; font-weight:bold;
	}
	.Mid_info_right table tr td input[type="text"]{
		height:35px; width:300px; border: 1px solid lightgray; border-radius:3px;
		padding-left:10px; color:lightgray; font-weight:bold;
	}
	input[type="submit"]{
		width:100px; height:50px; border:1px solid #5F0080; border-radius:3px; cursur:pointer; background-color:#5F0080;
		color:white; 
	}
	.Mid_info_right .box4{
		margin-left:270px; margin-top:50px;
	}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/02_Top.jsp"/>
	<c:import url="/WEB-INF/views/12_Info.jsp"/>
	<div class="Mid_info">
		<div class="Mid_info_left">
			<div class="box1">
				마이컬리
			</div>
			<div class="Mid_info_left2">
				<div class="box2">
					<a href="#">주문 내역</a>
				</div>
				<div class="box2">
					<a href="#">배송지 관리</a>
				</div>
				<div class="box2">
					<a href="#">늘 사는 것</a>
				</div>
				<div class="box2">
					<a href="#">상품 후기</a>
				</div>
				<div class="box2">
					<a href="#">상품 문의</a>
				</div>
				<div class="box2">
					<a href="#">적립금</a>
				</div>
				<div class="box2">
					<a href="#">쿠폰</a>
				</div>
				<div class="box3">
					<a href="#">개인 정보 수정</a>
				</div>
			</div>
		</div>
		<div class="Mid_info_right">
			<p>회원 탈퇴</p>
			<hr>
			<div class="box3">
				<form:form method="post" action ="/Withdraw" commandName="mem">
					<table>
						<tr>
							<td>아이디</td>
							<td>   </td>
							<td colspan="2"><form:input path="memId" value="${member.memId}"/></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td>   </td>
							<td colspan="2"><form:input path="memPw"/></td>
						</tr>
					</table>
					<hr>
					<div class="box4"> 
					<input type="submit" value="회원탈퇴">
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/03_Bottom.jsp"/>
</body>
</html>