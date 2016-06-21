package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.GIAOVIEN;

public class ModelDSGV {
	ConnectionDB c;
	Connection conn;
	Statement stmt;
	ResultSet rs;
	PreparedStatement pst;
	public ModelDSGV(){
		c = new ConnectionDB();
	}
	public ArrayList<GIAOVIEN> getList(){
		ArrayList<GIAOVIEN> arGV = new ArrayList<GIAOVIEN>();
		conn=c.getConnectMySQL();
		try {
			stmt=conn.createStatement();
			String sql = "select * from giaovien ORDER BY magvhd";
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				String magvhd=rs.getString(1);
				String hoten=rs.getString(2);
				String ngaysinh=rs.getString(3);
				String macn=rs.getString(4);
				String email=rs.getString(5);
				String sdt=rs.getString(6);
				String diachi=rs.getString(7);
				GIAOVIEN gv = new GIAOVIEN(magvhd, hoten, ngaysinh, macn, email, sdt,diachi);
				arGV.add(gv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return arGV;
	}
	public boolean updateGV(GIAOVIEN gv){
		boolean rs =false;
		conn = c.getConnectMySQL();
		String sql ="update giaovien set  hoten=?, ngaysinh=?, macn=?, email=?, sdt=?, diachi=? where magvhd=?";
		try {
			pst=conn.prepareStatement(sql);
			
			pst.setString(1, gv.getHoten());
			pst.setString(2, gv.getNgaysinh());
			pst.setString(3, gv.getMacn());
			pst.setString(4, gv.getEmail());
			pst.setString(5, gv.getSdt());
			pst.setString(6, gv.getDiaChi());
			pst.setString(7,gv.getMagvhd());
			pst.executeUpdate();
			rs=true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				conn.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return rs;
	}
	public boolean deleteGV(String id){
		boolean rs =false;
		conn = c.getConnectMySQL();
		String sql ="delete from THONGBAO where magvhd=? delete from giaovien where magvhd=?  delete from nguoidung where maso=?";
		try {
			pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			pst.setString(2, id);
			pst.setString(3, id);
			pst.executeUpdate();
			rs=true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				conn.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return rs;
	}
	public boolean insertGV(GIAOVIEN gv){
		boolean r =false;
		conn = c.getConnectMySQL();
		String sql ="insert into nguoidung values(?,'123456789','GV') insert into giaovien values(?,?,?,?,?,?,?) ";
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, gv.getMagvhd());
			pst.setString(2, gv.getMagvhd());
			pst.setString(3, gv.getHoten());
			pst.setString(4, gv.getNgaysinh());
			pst.setString(5, gv.getMacn());
			pst.setString(6, gv.getEmail());
			pst.setString(7, gv.getSdt());
			pst.setString(8, gv.getDiaChi());
			
			
			pst.executeUpdate();
			r=true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				conn.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return r;
	}
	public String getNameByID(String id){
		String s="";
		conn=c.getConnectMySQL();
		try {
			stmt=conn.createStatement();
			String sql ="select hoten from giaovien where magvhd='"+id+"'";
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				s=rs.getString("HoTen");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s;
	}

}
