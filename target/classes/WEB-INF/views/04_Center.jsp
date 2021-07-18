<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Center</title>
<style>
	*{margin:0 auto;}
	
	.center{
		 margin-top : 10px; text-align:center;
	}
	.center button{
		border:none; cursor:pointer; padding:0; display: none;
	}
	.left{
		position: absolute; left : 35%; top:35%;
		
	}
	.right{
		position: absolute;	right: 35%; top:35%;
	}	
	.btn-img{
		width:35px; height:50px; 
	}
</style>
</head>
<body>
	<div class="center">	
			<img src="resources/img/center_logo1.jpg" width="50%" height="368px" id="photo" onmouseover = "onbtn()" onmouseleave="offbtn()">
				<button class="left" id ="left" onclick="gallery(0)"><img class="btn-img" src="resources/img/btn_right.jpg"></button>
				<button class="right" id="right" onclick="gallery(1)"><img class="btn-img" src="resources/img/btn_left.jpg"></button>
		</div>
		<script>
			var num = 1;
			function gallery(direct){
				if(direct){
					if(num == 8) return;
					num++;
				}else{
					if(num == 1) return;
					num--;
				}
				var imgTag = document.getElementById("photo");
				imgTag.setAttribute("src","resources/img/center_logo" + num + ".jpg");
			}
			
			function onbtn(){
				document.getElementById("left").style.display ='block';
				document.getElementById("right").style.display ='block';
			}
			function offbtn(){
				document.getElementById("left").style.display='none';
				document.getElementById("right").style.display='none';
			}
	</script>
</body>
</html>