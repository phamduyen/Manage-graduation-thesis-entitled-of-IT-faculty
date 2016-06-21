
package model.dao;
import java.sql.*;

import model.bean.THONGBAO;
public class BaseDAO {
	Connection con ;
	ResultSet rs ;
	Statement stm;
	
	public Connection getconnection()
	{
		
		try {
			
			//B1
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
			//B2
			con = DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;instance=SQLEXPRESS;databaseName=QLDTTN;","sa", "12345678");
			System.out.println("ket noi thanh cong");
			stm = con.createStatement();
		} catch(Exception e){
			System.out.println("ket noi that bai");
			System.out.println(e);
		}
		return con;
		
	}
	
	public ResultSet getResultSet(String sql) {
		try {
			 return  stm.executeQuery(sql);
			 
		} catch (SQLException e) {
			System.out.println("kho truy suat duọc");
			return null;
		}
	}
	public void closeConnection(){
		try {
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public boolean updateData(String sql) {
		getconnection();
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
	public static void main(String[] args) {
		BaseDAO db = new BaseDAO();
		THONGBAO tb ;
		Connection con = db.getconnection();
		Statement stm ;
		ResultSet rs ;
		String sql = "select * from ThongBao";
		try {
			tb = new THONGBAO();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
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
