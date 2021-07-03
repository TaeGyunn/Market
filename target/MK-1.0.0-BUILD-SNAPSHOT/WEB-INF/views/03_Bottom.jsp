<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bottom</title>
<style>
	*{margin :0 auto;}
	.foot{
		width : 100%; height:405px;
	}
	.foot1{
		position: relative; width:1050px; height : 350px; 
	}
	.foot2{
		width: 530px; height : 30px; margin:0;
	}
	.foot2_box{
		z-index:1;
		position: absolute; padding: 10px; right:10%;
	}
	.foot2_box a{
		text-decoration : none;	font-weight: bold; color:black;
		padding:7px; font-size : 13.2px;
	}
	.foot3{
		width: 532px; height:24px; padding-top:19px;  margin :0;
	}
	.foot3 .text{
		font-size : 20px; font-weight:bold;
	}
	.foot4{
		position:relative; width:532px; height:44px;
		padding-top:23px;	margin :0;
	}
	.foot4 .text{
		font-size : 28px; font-weight: bold;
	}
	.foot4 .text1{
		position: absolute; right: 56%;	top:27%;
		font-size:14px; font-weight:bold;
	}
	.foot4 .text2{
		position : absolute; right:49%; top:62%;
		font-size : 14px; color:#999999; font-weight : bold;
	}
	.foot5{
		position:relative; width:532px; height:44px;
		padding-top:23px; margin:0;
	}
	.foot5 button{
		width:140px; height:43px; color:black;
		font-weight:bold; font-size : 14px; 
		border : 1px solid lightgray; background-color : white;
		border-radius:4px
	}
	.foot5 .text1{
		position: absolute; right: 56%;	top:34%;
		font-size:14px; font-weight:bold;
	}
	.foot5 .text2{
		position : absolute; right:50%; top:68%;
		font-size : 14px; color:#999999; font-weight : bold;
	}
	.foot6{
		position:relative; width:532px; height:44px;
		padding-top:20px; margin :0;
	}
	.foot6 button{
		width:140px; height:43px; color:black;
		font-weight:bold; font-size : 14px;
		border : 1px solid lightgray; background-color: white;
		border-radius : 4px;
	}
	.foot6 .text1{
		position :absolute; right:51%; top:34%;
		font-size : 14px; font-weight:bold;
	}
	.foot6 .text2{
		position : absolute; right:8.3%; top:68%;
		font-size : 14px; color:#999999; font-weight : bold;
	}
	.foot7{
		 position: absolute;
            width: 430px;
            height: 165px;
            padding-top: 100px;
            background-color: white;
            top: 0%;
            right: 9%;

	}
	.foot7 .text1{
		    font-size: 11.5px; color: #999999;
            font-weight: bold; padding-bottom: 3px;
	}
	.text1 a{
		color:#5F0080;
		text-decoration : none;
	}
	.foot7 .img1{
		position : absolute; top:102.3%; right: 84%;
	}
	.foot7 .img2{
		position : absolute; top:102.3%; right: 75%;
	}
	.foot7 .img3{
		position : absolute; top:102.3%; right: 66%;
	}
	.foot7 .img4{
		position : absolute; top:102.3%; right: 57%;
	}
	.foot8{
		width: 1050px; height:15px; padding-top : 30px;
		border-bottom : 1px solid lightgray;
	}
</style>
</head>
<body>
	<div class="foot">
		<div class="foot1">
			<div class="foot2">
				<div class="foot2_box">
					<a href="#">컬리소개</a>
					<a href="#">컬리소개영상</a>
					<a href="#">인재채용</a>
					<a href="#">이용약관</a>
					<a href="#">개인정보처리방침</a>
					<a href="#">이용안내</a>
				</div>
			</div>
			<div class ="foot3">
				<div class="text">고객행복센터</div>
			</div>
			<div class="foot4">
				<div class="text">1644-1107</div>
				<div class="text1">365고객센터</div>
				<div class="text2">오전7시 - 오후 7시</div>
			</div>
			<div class="foot5">
				<button>카카오톡 문의</button>
				<div class="text1">365고객센터</div>
				<div class="text2">오전7시 - 오후7시</div>
			</div>
			<div class="foot6">
				<button>1:1 문의</button>
				<div class="text1">24시간 접수 가능</div>
				<div class="text2">고객센터 운영시간에 순차적으로 답변해드리겠습니다.</div>
			</div>
			<div class="foot7">
				<div class=text1>법인명 (상호) : 주식회사 컬리 | 사업자등록번호 : 261-81-23567 <a href="#">사업자정보 확인</a> </div>
                    <div class=text1>통신판매업 : 제 2018-서울강남-01646 호 | 개인정보보호책임자 : 이원준<a href="#"></a></div>
                    <div class=text1>주소 : 서울시 도산대로 16길 20, 이래빌딩 B1 ~ 4F | 대표이사 : 김슬아<a href="#"></a></div>
                    <div class=text1>입점문의 : <a href="#">입점문의하기</a> | 마케팅제휴 : <a href="#">marketing@kurlycorp.com</a></div>
                    <div class=text1>채용문의 : <a href="#">recruit@kurlycorp.com</a></div>
                    <div class=text1>팩스 : 070 - 7500 - 6098 | 이메일 : <a href="#">help@kurlycorp.com</a></div>
                    <br>
                    <div class=text1>© KURLY CORP. ALL RIGHTS RESERVED</div>
                    <br>
                    <div><a href="https://instagram.com/marketkurly" target="_blank"><img src="resources/img/insta.png" width="30px" height="30px"> </a></div>
					<div><a href="https://www.facebook.com/marketkurly" target="_blank"><img class="img1" src="resources/img/face.png" width="30px" height="30px"></a></div>
			 		<div><a href="https://blog.naver.com/marketkurly" target="_blank"><img class="img2" src="resources/img/naverblog.png" width="30px" height="30px"></a></div>
					<div><a href="https://m.post.naver.com/marketkurly" target="_blank"><img class="img3" src="resources/img/naver.png" width="30px" height="30px"></a></div>
					<div><a href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg" target="_blank"><img class="img4" src="resources/img/youtube.png" width="30px" height="30px"></a></div>
			</div>
			<div class="foot8">
				
			</div>
		</div>
	</div>
</body>
</html>