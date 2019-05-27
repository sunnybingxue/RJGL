package Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Util.UserException;

import Model.User;
import Util.DBUtil;

public class UserDao {
	public void add (User user){
		Connection connection=DBUtil.getConnection();
		String sql = "select count(*) from t_user where username = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getUsername());
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				if (resultSet.getInt(1) > 0) {
					throw new UserException("用户名存在") ;
				}
			}
			
			sql = "insert into t_user(username,password,pingtaimc,pingtaibh,jsly,type) values (?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getPingtaimc());
			preparedStatement.setString(4, user.getPingtaibh());
			preparedStatement.setString(5, user.getJsly());
			preparedStatement.setInt(6, 1);
			preparedStatement.executeUpdate();	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}
	public boolean chongfu(String username){
		Connection connection=DBUtil.getConnection();
		String sql = "select count(*) from t_user where username = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				if (resultSet.getInt(1) > 0) {
					return false;
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return true;
	}
	
	public User login(String username){
		Connection connection=DBUtil.getConnection();
		String sql = "select * from t_user where username = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = new User();
		String password=null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				user = new User();
				user.setUsername(username);
				user.setId(resultSet.getInt("id"));
				user.setJsly(resultSet.getString("jsly"));
				user.setPingtaibh(resultSet.getString("pingtaibh"));
				user.setPingtaimc(resultSet.getString("pingtaimc"));
				user.setPassword(resultSet.getString("password"));
				user.setType(resultSet.getInt("type"));
			}
			
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return user;
	}
	

}
