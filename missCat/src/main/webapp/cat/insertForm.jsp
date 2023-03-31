<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/commonjsp/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/missCat/css/header.css">
<link rel="stylesheet" href="/missCat/css/footer.css">
</head>
<style>
.category_2 {
	display: flex;
	flex-direction: column;
	display: 2;
	margin-left: 500px;
	justify-content: center;
	align-items: center;
}
</style>
<body>
	<jsp:include page="/commonjsp/section.jsp" />
			<div class=category_2>
				<h1>신고 등록하기</h1>
				<form action="/missCat/CatServlet?action=insert" method="post">
					이름 : <input type="text" name="name" id="name" required="required"><br>
					성별 : <input type="text" name="gender" id="gender"><br>
					나이 : <input type="text" name="age" id="age"><br> 좋아하는
					것 : <input type="text" name="favorite" id="favorite"><br>
					싫어하는 것 : <input type="text" name="hate" id="hate"><br>
					<input type="submit" value="등록하기">
				</form>
			</div>
		</div>
	</section>
</body>
<jsp:include page="/commonjsp/footer.jsp" />
</html>