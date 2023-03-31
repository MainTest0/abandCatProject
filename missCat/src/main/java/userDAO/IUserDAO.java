package userDAO;

import userDTO.UserDTO;

public interface IUserDAO {
	
	int saveUser(UserDTO user);
	UserDTO userLogin(String username, String password);
	
}
