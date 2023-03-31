<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/missCat/css/header.css">
<link rel="stylesheet" href="/missCat/css/footer.css">
</head>
<style>
h1 {
	color: red;
	text-align: center;
	font-size: 40px;
	align-items: center;
	justify-content: center;
	padding-bottom: 30px;
}

.category_2 {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-left: 350px;
}

table {
	color: black;
	align-items: center;
	justify-content: center;
}

td {
	text-align: center;
}

#underline:hover {
	text-decoration: underline;
}

ul {
	width: 200px;
}

ul li:hover {
	text-decoration: underline;
}

#body_section {
	display: flex;
}

#body_div {
	display: flex;
}
</style>

<jsp:include page="/commonjsp/header.jsp" />
<body>
	<jsp:include page="/commonjsp/section.jsp" />
			<div class=category_2>
				<h1>긴급알림</h1>
				<h1>(이런 강아지 고양이 보셨나요?)</h1>
				<div>
					<a href="#">
						<table>
							<c:forEach var="cat" items="${list}">
								<tr>
									<th>Name</th>
									<th>Gender</th>
									<th>Age</th>
									<th>Favorite</th>
									<th>Hate</th>
								</tr>
								<%-- request.getAttribute("list"); --%>
								<tr id=underline>
									<td>${cat.name}</td>
									<td>${cat.gender}</td>
									<td>${cat.age}</td>
									<td>${cat.favorite}</td>
									<td>${cat.hate}</td>
								</tr>
							</c:forEach>
						</table>
					</a>
				</div>
	</section>
</body>
<jsp:include page="/commonjsp/footer.jsp" />
</html>