<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TopMini</title>
<style>
	body{margin:o auto;}
	.Top{
		width:100%; height: 50px; background-color : white;
		border-bottom:solid; border-bottom-color : whitesmoke;
	}
	.Top_box{
		width:70%; display:flex; flex-basis : auto;
	}
	.Top .Top_box .box1{
		margin-top:15px;
	}
	.Top .Top_box .box2{
		margin-top:15px; 
	}
	.Top .Top_box .box2 a{
		font-size:14px; font-weight:bold; text-decoration:none; color:black;
	}
	.Top .Top_box .box3{
		margin-top:9px;
	}
	.Top .Top_box .box3 input{
		border : 1px solid #f3f2f3; background-color : whitesmoke;
		height:32px; width:230px; border-radius:18px; top:10%;
		font-size:10px; color:gray;
	}
</style>
</head>
<body>
	<div class ="Top">
		<div class="Top_box">
			<div class="box1">
				<a href="#"><img src="resources/img/ico2.png" width="17px"></a>
			</div>
			<div class="box2">
				<a href="#">전체 카테고리</a>
			</div>
			<div class="box2">
				<a href="#">신상품</a>
			</div>
			<div class="box2">
				<a href="#">베스트</a>
			</div>
			<div class="box2">
				<a href="#">알뜰쇼핑</a>
			</div>
			<div class="box2">
				<a href="#">특가혜택</a>
			</div>
			<div class="box3">
				<input type="text" value="">
			</div>
		</div>
	</div>
</body>
</html>