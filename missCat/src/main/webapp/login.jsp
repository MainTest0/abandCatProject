<%@page import="userController.UserController"%>
<%@page import="userDTO.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDTO dto = new UserDTO();
	UserController controller = new UserController();
	UserDTO responseUser = controller.requestSignIn(dto.getUserName(), dto.getPassword());
	
	if(responseUser == null) {
 		System.out.println("<script>alert('로그인에 실패하였습니다.')</script>");
	} else {
		System.out.println("당신은 인증된 유저가 맞습니다. 로그인 성공");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>