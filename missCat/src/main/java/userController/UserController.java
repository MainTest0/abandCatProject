package userController;

import userDTO.UserDTO;
import userService.UserService;

public class UserController {
	
private UserService userService;
	
	public UserController() {
		userService = new UserService();
	}

	public String requestSignUp(UserDTO user, String host) {
		String response = "외부에서는 회원가입이 안됩니다.";

		if (host.equals("localhost")) {
			response = userService.signUp(user);
		}
		return response;
	}
	// 로그인 요청 기능
	public UserDTO requestSignIn(String username, String password) {
		UserDTO responseUserDTO = userService.checkUser(username, password);
		
		return responseUserDTO;
	}
}
