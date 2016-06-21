package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.bean.THONGBAO;

/**
 * DataBase.java
 * 
 * Version 1.0
 * 
 * Date: August 13, 2015
 * 
 * Copyright
 * 
 * Modification Logs: DATE AUTHOR DESCRIPTION
 * -----------------------------------------------------------------------
 * August 13, 2015 Nhom2SVTT Create
 */

public class DataBase {

//	/*
//	 * databaseName : ten database
//	 */
	String databaseName = "QLDTTN";
	String UserName = "sa";
	String PassWord = "12345678";
	Connection con;
	Statement stm;
	ResultSet rs;

	/*
	 * ket noi toi database
	 */
	public void openConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://localhost;databaseName="
					+ databaseName;
			con = DriverManager.getConnection(url, UserName, PassWord);
			System.out.println("ket noi thanh cong");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			stm = con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
//	String url = "Jdbc:Odbc:dbmockproject";
//	Connection con;
//	Statement stm;
//	ResultSet rs;
//	
//	public void openConnection(){
//		try {
//			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//			con = DriverManager.getConnection(url);
//			System.out.println("Ket noi thanh cong");
//		} catch (SQLException e) {
//			e.printStackTrace();
//			System.out.println("Ket noi loi");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//			System.out.println("Ket noi loi");
//		}
//		try {
//			stm = con.createStatement();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}

	/*
	 * dong ket noi toi database
	 */
	public void closeConnection() {
		try {
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/*
	 * thuc hien cau lenh select 
	 * du lieu tra ve kieu ResultSet neu that bai tra
	 * ve null
	 */
	public ResultSet getResultSet(String sql) {
		try {
			return stm.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("Loi Truy vấn");
			return null;
		}
	}

	/*
	 * thuc hien cau lenh insert,update,delete 
	 * neu thanh cong ket qua tra ve la true 
	 * neu that bai ket qua tra ve la false
	 */
	public boolean updateData(String sql) {
		openConnection();
		Boolean temp = true;
		try {
			stm.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			temp = false;
		} finally {
			closeConnection();
		}
		return temp;
	}
	
//	public static void main(String [] args){
//		DataBase db = new DataBase();
//		db.openConnection();
//		String sql = "select idTaiKhoan from TaiKhoan";
//		db.rs = db.getResultSet(sql);
//		try {
//			if(db.rs.next()){
//				System.out.println(db.rs.getString("idTaiKhoan"));
//				System.out.println("hello");
//			}
//		} catch (SQLException e) {
//			
//			e.printStackTrace();
//		}
//		db.closeConnection();
//	}
	public static void main(String[] args) {
		DataBase db = new DataBase();
		THONGBAO tb ;
		db.openConnection();
		ResultSet rs ;
		String sql = "select * from THONGBAO";
		try {
			tb = new THONGBAO();
			rs=db.getResultSet(sql);
			while (rs.next()){
				tb.setMatb(rs.getString(1));
				System.out.println(tb.getMatb());
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("loi");
		}
		db.closeConnection();
	}
}
