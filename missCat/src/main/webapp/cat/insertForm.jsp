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
section{
	width: 300px;
	display: 1;
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
.category_1{
	display: flex;
	align-items: center;
}
.category_2{
	display: flex;
	flex-direction: column;
	display: 2;
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
<div class =category_1>
<section>
<ul>
	<li><a href = "CatServlet?action=select"><p>유기묘 조회하기</p></a></li>
	<li><a href = "cat/insertForm.jsp"><p>유기묘 등록하기</p></a></li>
	<li><a href = "cat/Update.jsp"><p>유기묘 수정하기</p></a></li>
	<li><a href = "cat/delete.jsp"><p>유기묘 삭제하기</p></a></li>
</ul>
</section>
<div class = category_2>
<h1>신고 등록하기</h1>
 <form action="/missCat/CatServlet?action=insert" method="post">
	이름 : <input type = "text" name = "name" id = "name" required="required"><br>
	성별 : <input type = "text" name = "gender" id = "gender"><br>
	나이 : <input type = "text" name = "age" id = "age"><br>
	좋아하는 것 : <input type = "text" name = "favorite" id = "favorite"><br>
	싫어하는 것 : <input type = "text" name = "hate" id = "hate"><br>
	<input type = "submit" value ="등록하기">
</form>
</div>
</div>
</body>
</html>