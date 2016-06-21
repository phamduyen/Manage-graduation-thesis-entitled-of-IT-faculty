package model.bo;

import model.bean.DIEMBV;
import model.dao.DiemBaoVeDAO;

public class DiemBVBO {
	DiemBaoVeDAO diemBaoVeDAO = new DiemBaoVeDAO();
	public DIEMBV getDiemBaoVe(String maDK) {
		return diemBaoVeDAO.getDiemBaoVe(maDK);
	}

}
