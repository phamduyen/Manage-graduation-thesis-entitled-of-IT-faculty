package model.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.PHANHOI;

public class PhanHoiDAO extends BaseDAO {
	public String getIdTuDongTB() {
		IdProcess idProcess = new IdProcess();
		return "PH" + idProcess.getID("MaPH", "PHANHOI");
	}

	public ArrayList<PHANHOI> getPhanHoiList_GV(String MaGVHD) throws SQLException {
		// TODO Auto-generated method stubs
		ArrayList<PHANHOI> phList = new ArrayList<PHANHOI>();
		
		String sql = "Select PHANHOISV.MDK,MPH,MaDot,KieuPH,NoiDung,XacNhan,MaGVHD,NgayLap from PHANHOISV join DANGKIDETAI on DANGKIDETAI.MDK = PHANHOISV.MDK "
				+ " join DETAI on DANGKIDETAI.MDT = DETAI.MDT where DETAI.MaGVHD = '" + MaGVHD
				+ "' and PHANHOISV.XacNhan='True'order by NgayLap";
		
		
		System.out.println(sql);
		getconnection();
		rs = getResultSet(sql);

		PHANHOI phanHoi;
		while (rs.next()) {
			phanHoi = new PHANHOI();
			phanHoi.setMaphanhoi(rs.getString("MPH"));
			phanHoi.setMadot(rs.getString("MaDot"));
			phanHoi.setKieuPh(rs.getNString("KieuPH"));
			phanHoi.setNoidung(rs.getString("NoiDung"));
			phanHoi.setMaGVHD(rs.getString("MaGVHD"));
			phanHoi.setXacnhan(rs.getBoolean("XacNhan"));
			phanHoi.setMaDK(rs.getString("MDK"));
			phanHoi.setNgayLap(rs.getString("NgayLap"));
			phList.add(phanHoi);
			
		}
		//closeConnection();
		return phList;
		
	}


	public PHANHOI getPhanHoi(String maPH) {
		
		String sql = "select PHANHOISV.MPH, DANGKIDETAI.MDT,DANGKIDETAI.MDK,TenDeTai,HoTen,NoiDung,KieuPH,MaDot from PHANHOISV join DANGKIDETAI on DANGKIDETAI.MDK = PHANHOISV.MDK join DETAI on DETAI.MDT = DANGKIDETAI.MDT join SINHVIEN on  DANGKIDETAI.MSSV1 = SINHVIEN.MSSV "
				+ " or SINHVIEN.MSSV = DANGKIDETAI.MSSV2 where PHANHOISV.MPH = '"+maPH+"'";
		
		PHANHOI phanHoi = new PHANHOI();
		try {
			
			getconnection();
			rs = getResultSet(sql);
		while(rs.next()){
				System.out.println(sql);
				phanHoi.setMaphanhoi(maPH);
				phanHoi.setMaDK(rs.getString("MDK"));
				phanHoi.setmDT(rs.getString("MDT"));
				phanHoi.setTenDeTai(rs.getString("TenDeTai"));
				phanHoi.setTenSV(rs.getString("HoTen"));
				phanHoi.setNoidung(rs.getString("NoiDung"));
				//phanHoi.setKieuPh(rs.getString("TieuDe"));
				phanHoi.setMadot(rs.getString("MaDot"));
				phanHoi.setKieuPh(rs.getNString("KieuPH"));
				//System.out.println(phanHoi.getMaDK());
			}
			 
		} catch (SQLException e) {
		  //System.out.println("không truy suất được dữ liệu");
		}
		return phanHoi;
	}
	
	  public static void main(String[] args) { 
		  PhanHoiDAO phDao = new  PhanHoiDAO(); 
		  /*try { ArrayList<PHANHOI> phList =
	  phDao.getPhanHoiList_GV("GV001"); for (PHANHOI phanhoi : phList) {
	  System.out.println(phanhoi.getMaphanhoi()); }
	  
	  } catch (SQLException e) { // TODO Auto-generated catch block
	  
	  e.printStackTrace(); }*/
	   PHANHOI ph = phDao.getPhanHoi("PH001");
	  if(!ph.equals(null)){
		  System.out.println(ph.getMaDK());
		  System.out.println(ph.getMaphanhoi());
		  System.out.println(ph.getTenSV());
		  System.out.println(ph.getKieuPh());
		  System.out.println(ph.getMadot());
		  System.out.println(ph.getNoidung());
		  System.out.println(ph.getTenDeTai());
	  }else{
		  System.out.println("khong có dữ liệu");
	  }
	  }
}
