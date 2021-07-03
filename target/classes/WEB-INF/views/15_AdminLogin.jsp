<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style> 
	*{margin:0 auto;}
	.main{ width:1024px;}
	.main1{
			display : flex; align-items: center; justify-content: center;
			font-size: 20px; font-weight:bold; margin-top:50px;}
	.main2{
		display : flex; align-items: center; justify-content: center;
		margin-top:30px;
	}
	.mainn2 table{
		border-collapse : separate;  border-spacing :0 20px;
	}
	.mainn2 table tr td input[type="text"]{
		height:50px; width:320px; border: 1px solid lightgray; border-radius:3px;
		padding-left:10px; color:lightgray; font-weight:bold;
	}
	.mainn2 table tr{
		font-size:12px; font-weight:bold;
	}
	input[type="checkbox"]{
		width:20px; height:	20px;
		border : 1px solid lightgray; border-raidus:3px;
	}
	a{
		text-decoration:none; color:black;
	}
	.right{
		text-align:right;
	}
	button{
		width:320px; height:50px; border:1px solid #5F0080; border-radius:3px; cursur:pointer;
	}
	input[type="submit"]{
		width:320px; height:50px; border:1px solid #5F0080; border-radius:3px; cursur:pointer;
	}
	.white{
		color:white;	background-color:#5F0080;
	}
	.pupple{
		color:#5F0080; background-color:white; 
	}
</style>
</head>
<body>
<c:import url="/WEB-INF/views/02_Top.jsp"/>
	<div class="main">
		<div class="main1">관리자 로그인</div>
		<div class="mainn2">
		<form:form method="post" action="/adminlogin" commandName="ad">
				<table>
					<tr>
						<td colspan="2"><form:input path="Admin_id" placeholder="아이디를 입력해주세요"/></td>
					</tr>
					<tr>
						<td colspan="2"><form:input path="Admin_pw" placeholder="비밀번호를 입력해주세요"/></td>
					</tr>
					<tr>
						<td><input type="checkbox" value="보안접속"> 보안접속</td>
						<td class="right"><a href="#">아이디찾기</a> │ <a href="#">비밀번호 찾기</a>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" class="white" value="로그인" ></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
	<c:import url="/WEB-INF/views/03_Bottom.jsp"/>
</body>
</html>