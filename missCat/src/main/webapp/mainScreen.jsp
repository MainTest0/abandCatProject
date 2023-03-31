<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	text-decoration: none;
	list-style-type: none;
}
body{
	height: 100vh;
}
header{
	display: flex;
	flex-direction: column;
	border-bottom: 1px solid #D5D9E4;
}
.home{
	display: flex;
	background-color: #3366FF;
	align-items: center;
}
.home p{
	text-align: center;
	font-size: large;
	color:#fff;
}

.home a{
	width:800px;
}

ul li{
	border-radius: 20px;
	background-color: #9BA5C4;
	margin: 20px;
	width: 180px;
}
ul li p{
	text-align: center;
	padding:30px;
}

</style>
</head>
<body>
<header>
	<div class =home>
	<a href = "mainScreen.jsp"><img src = "/missCat/images/home.png"></a>
		<p>
		전문 수의사가 있어 안전하고<br>
		트레이닝 센터가있어 믿을만한 곳<br>
		170명의 관리사가 상시 관리합니다.
		</p>
	</div>
</header>

<section>
<ul>
	<li><a href = "CatServlet?action=select"><p>유기묘 조회하기</p></a></li>
	<li><a href = "cat/insertForm.jsp"><p>유기묘 등록하기</p></a></li>
	<li><a href = "cat/Update.jsp"><p>유기묘 수정하기</p></a></li>
	<li><a href = "cat/delete.jsp"><p>유기묘 삭제하기</p></a></li>
</ul>
</section>

</body>
</html>