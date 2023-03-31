<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
</style>
<body>
<header>
	<div class =home>
	<a href = "../mainScreen.jsp"><img src = "/missCat/images/home.png"></a>
		<p>
		전문 수의사가 있어 안전하고<br>
		트레이닝 센터가있어 믿을만한 곳<br>
		170명의 관리사가 상시 관리합니다.
		</p>
	</div>
</header>
	<form action="/missCat/CatServlet?action=delete" method="post">
        삭제할 이름 : <input type="text" name="name" id= "name" required="required"><br>
        <input type="submit" value="삭제하기">
    </form>
</body>
</html>