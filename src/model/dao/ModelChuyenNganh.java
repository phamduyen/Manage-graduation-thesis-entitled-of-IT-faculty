package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



import model.bean.CHUYENNGANH;

public class ModelChuyenNganh {
	ConnectionDB c;
	Connection conn;
	ResultSet rs;
	Statement stmt;
	public ModelChuyenNganh(){
		c= new ConnectionDB();
	}
	public String getName(String id){
		String r="Không có";
		conn=c.getConnectMySQL();
		try {
			stmt=conn.createStatement();
			String sql="select TenCN from chuyenNganh where MaCN = '"+id+"'";
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				r=rs.getString("TenCN");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return r;
	}
	public ArrayList<CHUYENNGANH> getList(){
		ArrayList<CHUYENNGANH> arCN = new ArrayList<CHUYENNGANH>();
		conn=c.getConnectMySQL();
		try {
			stmt=conn.createStatement();
			String sql="select * from chuyennganh";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				String macn=rs.getString(1);
				String tencn=rs.getString(2);
				CHUYENNGANH cn = new CHUYENNGANH(macn,tencn);
				arCN.add(cn);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arCN;
	}

}
