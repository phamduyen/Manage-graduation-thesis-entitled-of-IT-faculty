package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.SINHVIEN;

public class ModelSinhVien {
	ConnectionDB c;
	ResultSet rs;
	Statement stmt;
	Connection conn;
	public ModelSinhVien(){
		c = new ConnectionDB();
	}
	public String getNameByID(String id){
		String name="";
		conn=c.getConnectMySQL();
		try {
			stmt=conn.createStatement();
			String sql ="select hoten from sinhvien where mssv='"+id+"'";
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				name=rs.getString("HoTen");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;
	}

}
