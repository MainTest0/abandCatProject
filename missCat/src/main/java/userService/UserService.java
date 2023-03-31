package userService;

import userDAO.UserDAO;
import userDTO.UserDTO;

public class UserService {
private UserDAO dao;
	
	public UserService() {
		dao  = new UserDAO();	
	}
	
	public String signUp(UserDTO user) {
		String msg = "";
		// 사용자가 던진 값이 유효한지 확인하는 것을 validation 처리라고 한다.
		// 회원가입할 때 사용자가 이름 안넣고 요청하는 경우
		// 비밀번호 사이즈 확인 <- 이런것도 서비스로 묶을 수 있음
		if(user.getUserName().equals("")) {
			msg = "사용자 이름을 입력해주세요.";
			System.out.println(msg);
			return msg;
		}
		int resultRow = dao.saveUser(user);
		
		return resultRow + "";
	}
	
	// 회원정보 찾기 - 로그인 로직 구현
	public UserDTO checkUser(String username, String password) {
		boolean isValid =true;
		if(username.equals("")) {
			isValid = false;
		}else if(password.equals("")) {
			isValid = false;
		}
		
		UserDTO userDTO = null;
		if(isValid) {
			userDTO = dao.userLogin(username, password);
		}
		dao.userLogin(username, password);
		
		return userDTO ;
	}
}
