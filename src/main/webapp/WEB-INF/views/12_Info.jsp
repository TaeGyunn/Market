<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body{
		margin :0 auto;
	}
	.top_info{
		width : 100%; height : 320px; background-color : lightgray;
	}
	.top2_info{
		width :60%; height : 160px; background-color : lightgray;
		position:absolute; left:20%; margin-top: 42px; display:flex;
	}
	.top2_info .box1{
		width: 43.5%; height:160px; background-color:white; margin-right:0.5%; display:flex;
	}
	.top2_info .box1 .box1_1{
		height: 60px; width:80px; border :1px solid #5F0080; border-radius:5%;
		margin-left: 6%; margin-top:6%;
	}
	.top2_info .box1 .box1_1 p{
		text-align : center; font-weight:bold; color:#5F0080; padding:3%;  margin-top:15px;
	}
	.top2_info .box1 .box1_2{
		height:30px; width:100%;
	}
	.top2_info .box1 .box1_2 p{
		font-weight:bold; margin-top:40px; margin-left :20px;
		
	}
	.top2_info .box1 .box1_3{
		height :30px; width:100px; position:absolute; margin-top:100px; margin-left:20px;
	}
	.top2_info .box1 .box1_3 p{
		font-size: 11px; font-weight: 600; margin-left: 12px;
	}
	.top2_info .box1 .box1_4 {
	height: 20px;  width: 110px;  position: absolute;
    margin-top: 125px; margin-left: 35px; border: 1px solid lightgray; font-size: 12px; text-align: center;
    background-color: lightgrey;
	}
	.top2_info .box1 .box1_5 {
	height : 20px; width: 170px; position : absolute;
	margin-top:125px; margin-left:170px; border : 1px solid lightgray; font-size :12px; text-align : center;
	background-color: lightgrey; 
	}
	.top2_info .box1 button{
		color:gray; font-weight:bold;  border-style:none; background-color :lightgrey;
		cursor : pointer;
	}
	.top2_info .box2{
		width: 18.5%; height: 160px; background-color:white; margin-right:0.5%;
	}
	.top2_info .box3{
		width: 18.5%; height: 160px; background-color:white;
	}
	.top2_info .box2_3{
		font-weight:bold; font-size:13px; margin-left :25px; margin-top : 25px;
	}
	.top2_info .box2_4{
		margin-left : 30px; margin-top:30px;
	}
	.top2_info .box2_4 a{
		text-decoration: none;	font-size: 25px;
		font-weight:bold;	color:#5F0080;
	}
	.top3_info{
		width: 60%;  hegiht: 40px;  background-color: #538987;
    margin-top: 220px;  position: absolute; left: 20%;  padding-block: 15px;
    font-size: 15px; color: white; text-align: center;
	}
	.top3_info a{
		text-decoration:none; font-size: 13px; font-weight:bold; color:white;
	}
</style>
<body>
	<div class="top_info">
		<div class="top2_info">
			<div class="box1">
				<div class="box1_1">
					<p>일반</p>
				</div>
				<div class="box1_2">
					<p>${member.memId} 님</p>
				</div>
				<div class ="box1_3">
					<p>적립 0.5% </p>
				</div>
				<div class ="box1_4">
					<button>전체등급보기</button>
				</div>
				<div class="box1_5">
					<button>다음 달 예상등급 보기</button>
				</div>
			</div>
			<div class="box2">
				<div class="box2_3">
					적립금 >
				</div>
				<div class="box2_4">
					<a href ="#">0 원 </a>
				</div>
			</div>
			<div class="box2">
				<div class="box2_3">
					쿠폰 >
				</div>
				<div class="box2_4">
					<a href="#">1 개</a>
				</div>
			</div>
			<div class="box3">
				<div class="box2_3">
					컬리패스 >
				</div>
				<div class="box2_4">
					<a href=#>알아보기</a>
				</div>
			</div>
		</div>
		<div class="top3_info">
			친구 초대하면 친구도 나도 5,000원씩! - 컬리를 친구에게 소개해주세요 <a href="#">바로가기</a>
		</div> 
	</div>
</body>
</html>