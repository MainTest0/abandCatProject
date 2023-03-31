<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/missCat/css/header.css">
<link rel="stylesheet" href="/missCat/css/footer.css">
</head>
<style>
#delete_center{
	display: flex;
	justify-content: center;
	align-items: center;
	margin-left: 500px;
}
</style>
<jsp:include page="/commonjsp/header.jsp" />
<body>
	<jsp:include page="/commonjsp/section.jsp" />
		<div id = delete_center>
			<form action="/missCat/CatServlet?action=delete" method="post">
				삭제할 이름 : <input type="text" name="name" id="name" required="required"><br>
					<input type="submit" value="삭제하기">
			</form>
			</div>
		</div>
	</section>
</body>
<jsp:include page="/commonjsp/footer.jsp" />
</html>