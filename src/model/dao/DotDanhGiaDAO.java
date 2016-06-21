package model.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.DATTG;

public class DotDanhGiaDAO extends BaseDAO{

	public ArrayList<DATTG> getListDot() {
		ArrayList<DATTG> dotDanhGiaList = new ArrayList<DATTG>(); 
		DATTG dot ;
		String sql = "Select * from DATTG ";
		
		try {
			rs = getResultSet(sql);
			while(rs.next()){
				dot = new DATTG();
				dot.setMadot(rs.getString("MaDot"));
				dot.setTendot(rs.getString("TenDot"));
				dot.setThoigiandot(rs.getString("ThoiGianDot"));
				dotDanhGiaList.add(dot);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dotDanhGiaList;
	}

	public DATTG getDot(String maDot) {
		
		DATTG  dot = new DATTG(); ;
		String sql = "Select * from DATTG where MaDot = '"+maDot+"' ";
		
		try {
			rs = getResultSet(sql);
			while(rs.next()){
				dot.setMadot(rs.getString("MaDot"));
				dot.setTendot(rs.getString("TenDot"));
				dot.setThoigiandot(rs.getString("ThoiGianDot"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dot;
	}
	
}
