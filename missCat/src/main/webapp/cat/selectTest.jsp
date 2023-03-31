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
h1{
	color: #20D68A;
	text-align: center;
	font-size: 50px;
	margin-top: 20px;
}
</style>
<body>
<header>
	<div class =home>
	<a href = "/missCat/mainScreen.jsp"><img src = "/missCat/images/home.png"></a>
		<p>
		전문 수의사가 있어 안전하고<br>
		트레이닝 센터가있어 믿을만한 곳<br>
		170명의 관리사가 상시 관리합니다.
		</p>
	</div>
</header>
<h1>긴급알림(이런 강아지 고양이 보셨나요?)</h1>
	<table> 
	<c:forEach var="cat" items="${list}" >
		<tr>
			<th>Name</th>
			<th>Gender</th>
			<th>Age</th>
			<th>Favorite</th>
			<th>Hate</th>
		</tr>
		<%-- request.getAttribute("list"); --%>
			<tr>
				<td>${cat.name}</td>
				<td>${cat.gender}</td>
				<td>${cat.age}</td>
				<td>${cat.favorite}</td>
				<td>${cat.hate}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>