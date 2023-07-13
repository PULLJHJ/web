package com.web.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	
	private static final String URL = "jdbc:mariadb://localhost:3306/kd";
	private static final String DRIVER_NAME = "org.mariadb.jdbc.Driver";
	private static final String USER = "root";
	private static final String PASSWORD = "kd1824java";
	
	static {
		try {
			Class.forName(DRIVER_NAME);
			System.out.println("나 나오면 드라이브 잘 잧음");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	public static Connection getcon() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public static void main(String[] args) {
	}
}
