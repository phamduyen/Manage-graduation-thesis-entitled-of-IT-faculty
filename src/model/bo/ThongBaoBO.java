package model.bo;

import java.util.ArrayList;

import model.bean.THONGBAO;
import model.dao.ThongBaoDAO;

public class ThongBaoBO {
	ThongBaoDAO tbDAO =new ThongBaoDAO();

	public boolean TaoThongBaoBO(String maGVHD,String tieuDe, String noiDung, String file) {
		// TODO Auto-generated method stub
		System.out.println("vo bbo roi");
		return tbDAO.taoThongBao_GV(maGVHD,tieuDe, noiDung, file);
	}

	public ArrayList<THONGBAO> getTBListGV(String maGV) {
		
		return tbDAO.getTBListGv(maGV);
	}
	
}
