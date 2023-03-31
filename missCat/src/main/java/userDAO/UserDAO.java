package userDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import userDTO.UserDTO;
import utils.DBHelper;

public class UserDAO implements IUserDAO {

	private DBHelper dbHelper;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}

	@Override
	public int saveUser(UserDTO user) {
		String query = " INSERT INTO user " 
				+ " (username, password) "
				+ " VALUES(?, ?) ";
		
		int resultRow = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getPassword());
			resultRow = pstmt.executeUpdate();	//insert, update, delete 시 사용
			
		} catch (SQLException e) {
			System.out.println(">> saveUser 함수에서 오류가 발생했어 <<");
			e.printStackTrace();
		}
		return resultRow;
	}
	
	@Override
	public UserDTO userLogin(String username, String password) {
		UserDTO resultUser = null;
		String query = " SELECT *  "
				+ " FROM user "
				+ " WHERE username = ? "
				+ "	AND password = ? ";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				UserDTO dto = new UserDTO();
				dto.setId(rs.getInt("id"));
				dto.setUserName(rs.getString("username"));
				resultUser = dto;
			}
		} catch (Exception e) {
			System.out.println(">> userDAO 회원찾기시 에러 발생 <<");
			e.printStackTrace();
		}
		
		return resultUser;
	}

	

} // end of class
