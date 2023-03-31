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
<jsp:include page="/commonjsp/header.jsp" />
<style>
a:hover {
	text-decoration: underline;
}
</style>
<body>
<section id=body_section>
		<div id=body_div>
			<ul>
				<li><a href="/missCat/CatServlet?action=select"><p>유기묘 조회하기</p></a></li>
				<li><a href="/missCat/cat/insertForm.jsp"><p>유기묘 등록하기</p></a></li>
				<li><a href="/missCat/cat/update.jsp"><p>유기묘 수정하기</p></a></li>
				<li><a href="/missCat/cat/delete.jsp"><p>유기묘 삭제하기</p></a></li>
			</ul>
		</div>
	</section>
</body>

<jsp:include page="/commonjsp/footer.jsp" />
</html>