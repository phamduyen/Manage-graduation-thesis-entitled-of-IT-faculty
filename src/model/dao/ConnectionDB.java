package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionDB {
	Connection conn;
	String user="sa";
	String pass="12345678";
	
	String url = "jdbc:sqlserver://localhost:1433;instance=SQLEXPRESS;databaseName=QLDTTN";
	public Connection getConnectMySQL(){
		//nạp driver
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
		} catch (ClassNotFoundException e) {
			System.out.println("Không thể nạp driver");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//tạo chuỗi kết nối conn
		try {
			conn = DriverManager.getConnection(url, user,pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Sai tham số kết nối");
			e.printStackTrace();
		}
		return conn;
	}
	
	
		public static void main(String[] args) {
			ConnectionDB c = new ConnectionDB();
			System.out.println(c.getConnectMySQL());
		}
}
