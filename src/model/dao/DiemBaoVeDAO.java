package model.dao;

import java.sql.SQLException;

import model.bean.DIEMBV;

public class DiemBaoVeDAO extends BaseDAO{
	
	public DIEMBV getDiemBaoVe(String maDK) {
		DIEMBV diemBV = new DIEMBV();
		String sql = "select DIEMBV.MDK,TenDeTai,GV1,GV2,GV3,(GV1+GV2+GV3)/3 as TB, NgayNhap from DIEMBV join DANGKIDETAI"
				+ " on DIEMBV.MDK = DANGKIDETAI.MDK join DETAI on DETAI.MDT=DANGKIDETAI.MDT where MDK = '"+maDK+"'";
		rs = getResultSet(sql);
		try {
			while(rs.next()){
				diemBV.setMadangki(rs.getString("MDK"));
				diemBV.setTenDT(rs.getString("TenDeTai"));
				diemBV.setGv1(rs.getFloat("GV1"));
				diemBV.setGv2(rs.getFloat("GV2"));
				diemBV.setGv3(rs.getFloat("GV3"));
				diemBV.setNgaynhap(rs.getString("NgayNhap"));
				diemBV.setTb(rs.getFloat("TB"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Sai roi");
		}
		closeConnection();
		return diemBV;
	}
	
	
}


