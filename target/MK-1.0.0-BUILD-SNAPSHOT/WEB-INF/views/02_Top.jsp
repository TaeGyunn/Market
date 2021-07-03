<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>
<style>
	body{
		margin : 0; padding: 0;
	}
	.top{
		width : 100%;	height : 200px;
	}
	.top1{
		width : 100%;	height : 160px;
	}
	.box{
		width : 100%; height : 42px; background-color : #5F0080; text-align : center;
		line-height:42px;
	}
	.box a{
		text-decoration : none; color : white; font-weight : bold; font-size: 13.5px;
		text-align : center; 
	}
	.box img{
		cursor : pointer; position: absolute; right: 20%; transform: translateX(-50%); 
		margin-top : 10px;
	}
	.top2{
		margin : 0 auto;	width:1050px;	height:100%;
	}
	.top2_a{
		width:100%; height:30px; margin-top:9px;
	}
	.top2_a_left{
		float : left;
	}
	.top2_a_right{
		float : right;
	}
	.top2_a_right a{
		text-decoration: none;	font-size: 11px;
		font-weight:bold;	color:black;
	}

	.login{
				z-index : 1;
	        	top : 11.5%;
	        	left : 75.3%;
	        	width : 100px;
	        	height: 135px;
	        	border: 1px solid lightgray;
	        	text-align: left;
	        	position: absolute;
	        	padding:5px;
	        	background-color: white;
	        	display: none;
	}
	.login_on{
				z-index : 1;
	        	top : 11.5%;
	        	left : 75.3%;
	        	width : 100px;
	        	height: 175px;
	        	border: 1px solid lightgray;
	        	text-align: left;
	        	position: absolute;
	        	padding:5px;
	        	background-color: white;
	        	display: none;
	}
	.top2_b{
		text-align: center; margin-top:0px;
	}
	.top2_c{
		position : sticky; height:50px; top:0; width:100%; 
	}
	.top2_c_img{
		position:absolute; margin:10px; top:17%;
	}
	.top2_c_menu{
		position: absolute; padding :13px; 
	}
	.top2_c_menu a{
		text-decoration : none;	font-weight: bold; color:black;
		padding:41px; font-size : 14px;
	}
	.top2_c_menu input{
		border : 1px solid #f3f2f3; background-color : whitesmoke;
		height:32px; width:230px; border-radius:18px; top:15%;
		font-size:10px; color:gray;
	}
	.top2_c_menu_img1{
		position:absolute;	margin: 10px; right:5.2%; top: 13%;
	}
	.top2_c_menu_img2{
		position:absolute; margin:10px; right : 1%; top:10%;
	}
</style>
</head>
<body>
	<div class="top">
		<div class="top1">
			<div class = "box" id="box">
				<a href="#">지금 가입하고 인기상품 100원에 받아가세요!</a>
				<img src="resources/img/ico1.png" width="20px" height="20px" onclick="banner_off()">
			</div>
			<div class="top2">
				<div class="top2_a">
					<div class="top2_a_left">
						<a href="#"><img src="resources/img/서울_ 경기_ 인천 샛별배송_ 수도권 이외 지역 택배배송.gif" width="160px" height="21px"></a>
					</div>
					<div class="top2_a_right">
						<c:if test = "${empty member}">
							<a href="${cp}/05_Join">회원가입</a>
							|
							<a href="${cp}/07_Login">로그인</a>
							|
							<a href="/">관리자 로그인</a>
							|
							<a href="#" onmouseover="on()">고객센터▼</a>
							<div class="login" id="login" onmouseleave="off()">
								<a href="#">공지사항</a>
								<br>
								<a href="#">자주하는 질문</a>
								<br>
								<a href="#">1:1문의</a>
								<br>
								<a href="#">대량주문 문의</a>
								<br>
								<a href="#">상품제안</a>
								<br>
								<a href="#">에코포장 피드백</a>
								<br>
							</div>
							<a href="#">배송지역 검색</a>
						</c:if>
						<c:if test="${!empty member || !empty Nmember}">
							<a href="#" onmouseover="on()">${member.memId} 님▼</a>
							<div class="login_on" id="login" onmouseleave="off()">
							<a href="#">주문 내역</a>
							<br>
							<a href="#">배송지 관리</a>
							<br>
							<a href="#">늘 사는 것</a>
							<br>
							<a href="#">상품후기</a>
							<br>
							<a href="#">적립금</a>
							<br>
							<a href="#">쿠폰</a>
							<br>
							<a href="${cp}/10_Modify">개인 정보 수정</a>
							<br>
							<a href="${cp}/logout">로그아웃</a>
							</div>
							|
							<a href="#">고객센터</a>
						</c:if>
					</div>
				</div>
				<div class="top2_b">
					<a href="/"><img src="resources/img/마켓컬리 로고.png" width="100px"></a>
				</div>
				<div class="top2_c">
					<div class="top2_c_img">
						<a href="#"><img src="resources/img/ico2.png" width="17px"></a>
					</div>
					<div class="top2_c_menu" >
						<a href="#">전체 카테고리</a>
						|
						<a href="#">신상품</a>
						|
						<a href="#">베스트</a>
						|
						<a href="#">알뜰쇼핑</a>
						|
						<a href="#">이벤트</a>
						<input type="text" value="       15분이면 완성하는 간편요리">
					</div>
					<div class="top2_c_menu_img1">
						<a href="#"><img src="resources/img/ico3.png" width="30px" height="30px"></a>
					</div>
					<div class="top2_c_menu_img2">
				</div>
			</div>
		</div>
	</div>
	</div>
	<script>
		function on(){
			document.getElementById("login").style.display="block";
		}
		function off(){
			document.getElementById("login").style.display="none";
		}
		function banner_off(){
			document.getElementById("box").style.visibility = "hidden";
		}
		function color_change(){
			document.getElementById("menu_nav").style.color ="#5F0080";
		}
		function color_change2(){
			document.getElementById("menu_nav").style.color ="black";
		}
	</script>
</body>
</html>