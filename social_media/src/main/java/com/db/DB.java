package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	public static Connection dbConnect() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/socialmediadb", "root", "hello");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
