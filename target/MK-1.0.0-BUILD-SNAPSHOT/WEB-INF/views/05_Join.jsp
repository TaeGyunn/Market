<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join</title>
<style>
	*{margin :0 auto;}
	.main{
		width : 100%; 
	}
	.main1{
		margin : 0 auto;
		width:680px; height:150px;
		border-bottom : 2px solid black;
	}
	.main1_font{
		font-size : 30px; font-weight:bold;
		text-align :center; padding-top :50px;
	}
	.main1_font1{
		color:gray;	text-align :right; font-size:12.5px;
		padding-top:40px;
	}
	.main1_font1 b{	color:red;}
	.main2{
		width:680px; border-bottom:1px solid black;
	}
	.main2 table{
		  border-collapse: separate; border-spacing: 0 20px;
	}
	.main2 table tr{
		font-size:12.5px; font-weight:bold; 
	}
	.main2 table tr td b{color:Red;}
	.main2 table tr td input{
		
		border: 1px solid lightgray; border-radius : 3px; font-weight:bold; color:black;
		font-size : 13.5px; height :40px; width:330px; padding-left:10px;
	}
	.main2 table tr td button{
		border:1px solid #5F0080; border-radius : 3px; font-weight:bold; color:#5F0080;
		font-size:13.5px; height:40px; width:120px; background-color:white;
		cursor:pointer;
	}
	.main2 table tr td .address{
		border: 1px solid #5F0080; border-radius : 3px; font-weight:bold; color:#5F0080;
		font-size : 13.5px; height :40px; width:340px; padding-left:10px; background-color:white;
	}
	.main2 table tr td p{
		font-size:10px; margin-top:5px; color:gray;
	}
	.main3{
		width:680px; border-bottom:1px solid lightgray;
	}
	.main3 table{
		border-collapse : separate; border-spacing:0 20px;
		position:relative; right:22px;
	}
	.main3 table tr{
		
		font-size:12.5px; font-weight:bold; 
	}
	.main3 table tr td b {color:Red;}
	.main3 table tr td input[type=radio]{
		background-color:#5F0080; border : 1px solid lightgray;
		width:23px; height:23px; margin-right:10px;
	}
	.main3 table tr td p{
		font-size:10px; color:gray;
	}
	.main3 table tr .font{
		font-size:15px;
	}
	.main3 table tr .font1{
		font-size :14px;
	}
	.main3 table tr .font1 b{
		color:lightgray;
	}
	.main3 table tr a{
		color:#5F0080; text-decoration:none; font-size:14px;
	}
	.main4{
		width:680px; height: 100px; margin-top:40px; marign-bottom:40px;
	}
	.main4 input[type=submit]{
		display: flex; align-items: center; justify-content: center;
		width:250px; height:60px; border-radius:3px; color:white;
		border: 1px solid #5F0080; background-color:#5F0080;
		font-weight:bold; font-size:15px; cursur:pointer;
	}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/02_Top.jsp"/>
	<div class="main">
		<div class="main1">
			<div class="main1_font">회원가입</div>
			<div class="main1_font1"><b>*</b>필수입력사항</div>
		</div>
		<form:form action="/join" method="post" commandName="mem"> 
			<div class="main2">
				<table>
					<tr>
						<td>아이디<b>＊</b>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td><form:input path="memId" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"/>
						<button>중복확인</button></td>
					</tr>
					<tr>
						<td>비밀번호<b>*</b></td>
						<td><form:input path="memPw"/></td>
					</tr>
					<tr>
						<td>비밀번호확인<b>*</b></td>
						<td><input type="password"></td>
					</tr>
					<tr>
						<td>이름<b>*</b></td>
						<td><form:input path="memName" placeholder="이름을 입력해주세요"/></td>
					</tr>
					<tr>
						<td>이메일<b>*</b></td>
						<td><form:input path="memEmail" placeholder="예: marketkrurly@kurly.com"/>
						<button>중복확인</button>
						</td>
					</tr>
					<tr>
						<td>휴대폰<b>*</b></td>
						<td><form:input path="memNumber" placeholder="숫자만 입력해주세요"/>
						<button>중복확인</button>
						</td>
					</tr>
					<tr>
						<td>주소<b>*</b></td>
						<td><button class="address">주소검색</button>
						<p>배송지에 따라 상품정보가 달라질 수 있습니다.</p>
						</td>
					</tr>
				</table>
			</div>
			<div class="main3">
				<table>
					<tr>
						<td>이용약관동의<b>＊</b>
						&nbsp;&nbsp;&nbsp;</td>
						<td><input type="radio" value="전체동의합니다"></td> 
						<td colspan="2" class="font">전체동의합니다
							<p>선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="radio" value="이용약관 동의"></td>
						<td class="font1">이용약관 동의<b>(필수)</b></td>
						<td><a href="#">약관보기></a></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="radio" value="개인정보처리방침동의"></td>
						<td class="font1">개인정보처리방침 동의<b>(필수)</b></td>
						<td><a href="#">약관보기></a></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="radio" value="개인정보처리방침동의"></td>
						<td class="font1">개인정보처리방침 동의<b>(선택)</b></td>
						<td><a href="#">약관보기></a></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="radio" value="본인은 만 14세 이상입니다."></td>
						<td class="font1">본인은 만 14세 이상입니다.<b>(필수)</b></td>
						<td></td>
					</tr>
				</table>
			</div>
			<div class="main4">
				<input type="submit" value="가입하기">
			</div>
		</form:form>
	</div>
	<c:import url="/WEB-INF/views/03_Bottom.jsp"/>
</body>
</html>