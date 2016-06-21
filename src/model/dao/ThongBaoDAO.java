package model.dao;

import java.sql.Date;
import java.util.ArrayList;

import model.bean.THONGBAO;

public class ThongBaoDAO extends BaseDAO{
	ArrayList<THONGBAO> tbListGV;
	THONGBAO tb;
	public String getIdTuDongTB() {
		IdProcess idProcess = new IdProcess();
		return "TB" + idProcess.getID("MaTB", "THONGBAO");
		
	}
	//THONGBAO tb = new THONGBAO();
	public boolean taoThongBao_GV(String maGVHD,String tieuDe, String noiDung,String file) {
		String maTB = getIdTuDongTB();
		String ngayTB = new Date(System.currentTimeMillis()).toString();
		boolean tam = true;
		try{
		getconnection();	
		String sql = "Insert into THONGBAO(MaGVHD,MaTB,TieuDe,Noidung,NgayTB,FileDinhKem,DoiTuong)  values(N'"+maGVHD+"',N'"+maTB+"',N'"+tieuDe+"',N'"+noiDung+"',N'"+ngayTB+"',N'"+file+"','SV')";
		System.out.println(sql);
		boolean update = updateData(sql);
		System.out.println(update);
		tam = true;
		}
		catch (Exception e)
		{
			tam = false;
		}
		return tam;
	}
	public ArrayList<THONGBAO> getTBListGv(String maGV) {
		String sql = "select *from THONG BAO where MaGVHD = '"+maGV+"'";
		System.out.println(sql);
		try {
			getconnection();
			rs =getResultSet(sql);
			while(rs.next()){
				 tb = new THONGBAO();
				 tb.setMatb(rs.getString("MaTB"));
				 tb.setMagvhd(rs.getString("MaGVHD"));
				 tb.setTieude(rs.getString("TieuDe"));
				 tb.setNoidung(rs.getString("NoiDung"));
				 tb.setNgaytb(rs.getString("NgayTB"));
				 tb.setFiledinhkem(rs.getString("FileDinhKem"));
				 tbListGV.add(tb);
			}
		} catch (Exception e) {
			System.out.println("Loi he thong");
		}
		
		return tbListGV;
	}
	
/*	public static void main(String[] args) {
		ThongBaoDAO tb = new ThongBaoDAO();
		 String tieuDe = "met toi";
		 String noiDung = "duoc nghi hoc roi";
		 String file = "";
		tb.taoThongBao_GV(tieuDe, noiDung, file);
	}*/
	
}
