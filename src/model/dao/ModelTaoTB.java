package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import model.bean.THONGBAO;

public class ModelTaoTB {
	ConnectionDB Connect =new ConnectionDB();
	Connection conn;
	Statement st;
	ResultSet rs;
	PreparedStatement pst;
	
	public ModelTaoTB(){
		Connect = new ConnectionDB();
	}
	public ArrayList<THONGBAO> getList(){
		
		ArrayList<THONGBAO> alTB = new ArrayList<THONGBAO>();
		
		conn = Connect.getConnectMySQL();
		
		try {
			String sql = "SELECT * FROM THONGBAO";
			st= conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()){
				String matb = rs.getString(1);
				String magvhd = rs.getString(2);
				String tieude = rs.getString(3);
				String noidung = rs.getString(4);
				//boolean kieutb = rs.getBoolean(5);
				String ngaytb=rs.getString(6);
				String filedinhkem=rs.getString(7);
				String doituong=rs.getString(8);
				THONGBAO tb = new THONGBAO(matb , magvhd, tieude,noidung,ngaytb,filedinhkem,doituong);
				alTB.add(tb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return alTB;
	}
	
	public boolean TaoTB(THONGBAO tb){
		boolean rs = false;
		conn = Connect.getConnectMySQL();
		String sql= "INSERT INTO THONGBAO VALUES(?,?,?,?,?,?,?,?)";
		try {
			pst= conn.prepareStatement(sql);
			
			pst.setString(1, tb.getMatb());
			pst.setString(2, tb.getMagvhd());
			pst.setString(3, tb.getTieude());
			pst.setString(4, tb.getNoidung());
			pst.setBoolean(5, tb.getKieutb());
			pst.setString(6, tb.getNgaytb());
			pst.setString(7, tb.getFiledinhkem());
			pst.setString(8, tb.getDoituong());
			pst.executeUpdate();
			rs=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				pst.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return rs;
	}
	public String getID(){
		conn = Connect.getConnectMySQL();
		String ms=""; int ma=0;
		try {
		String sql1="SELECT MAX(cast(SUBSTRING(MaTB,3,3)as int)) as iD FROM THONGBAO ";
		ResultSet rs=st.executeQuery(sql1);
		while(rs.next()) {
		ms=rs.getString("iD");
		ma = Integer.parseInt(ms)+1;
		ms=String.valueOf(ma);
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		finally {
		try {
		conn.close();
		} catch (SQLException e) {
		e.printStackTrace();
		}
		}
		return ms;
		}
}
