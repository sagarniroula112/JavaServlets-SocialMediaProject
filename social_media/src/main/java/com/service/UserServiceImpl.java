package com.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.db.DB;
import com.model.User;

public class UserServiceImpl implements UserService{
	// user service implementations
	@Override
	public void userSignup(User u) {
		String sql = "insert into user(username, password, email, profilePicture) values('"+u.getUsername()+"', '"+u.getPassword()+"', '"+u.getEmail()+"', '"+u.getProfilePicture()+"')";
		try {
			Statement stm = DB.dbConnect().createStatement();
			stm.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean userLogin(String un, String pw) {
		String sql = "select * from user where username='"+un+"' and password='"+pw+"'";
		try {
			Statement stm = DB.dbConnect().createStatement();
			ResultSet rs = stm.executeQuery(sql);
			
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void deleteUser(int id) {
		
		
	}
	
}
