package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CheckLogin {
	ConnectionDB c ;
	Connection conn;
	ResultSet rs;
	Statement stmt;
	public CheckLogin(){
		c= new ConnectionDB();
	}
	public String author(String user, String pass){
		String result="";
		conn=c.getConnectMySQL();
		try {
			stmt = conn.createStatement();
			String sql = "select PhanQuyen from nguoidung where maso like '"+user+"' and password like '"+pass+"'";
			rs=stmt.executeQuery(sql);
			if(!rs.next()){
				result ="error";
			}else{
				ResultSet r = stmt.executeQuery(sql);
				while(r.next()){
					result =r.getString("PhanQuyen").trim();
					System.out.println(result);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

}
