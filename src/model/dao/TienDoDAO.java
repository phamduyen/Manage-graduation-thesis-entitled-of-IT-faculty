package model.dao;

import model.bean.DANHGIA;

public class TienDoDAO extends BaseDAO{

	public DANHGIA getTienDo(String maDK, String maDot) {
		String sql = "select DanhGia.MDK,TenDeTai,NoiDung,TienDo,DanhGia.MaDot,TenDot from DANGKIDETAI join DanhGia on DANGKIDETAI.MDK = DanhGia.MDK join DeTai "
				+ "on DeTai.MDT = DANGKIDETAI.MDT join DATTG on DANHGIA.MaDot = DATTG.MaDot where Danhgia.MDK = '"+maDK+"' and DanhGia.MaDot = '"+maDot+"'";
		DANHGIA dgia = new DANHGIA();
		try {
			rs = getResultSet(sql);
			while(rs.next()){
				dgia.setMadangky(rs.getNString("MDK"));
				dgia.setTenDT(rs.getNString("TenDeTai"));
				dgia.setNoidung(rs.getNString("NoiDung"));
				dgia.setMadot(rs.getString("MaDot"));
				dgia.setTenDot(rs.getString("TenDot"));
				dgia.setTenDT(rs.getString("TenDT"));
				dgia.setTiendo(rs.getFloat("TienDo"));
			}
		} catch (Exception e) {
		System.out.println("lỗi kết nối đánh giá");
		}
		return dgia;
		
	}

	
}
