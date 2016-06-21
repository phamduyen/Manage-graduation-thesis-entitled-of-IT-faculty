package model.bo;

import model.bean.DANHGIA;
import model.dao.TienDoDAO;

public class TienDoBO {
	TienDoDAO tdDao = new TienDoDAO();
	public DANHGIA getTienDo(String maDK, String maDot) {	
		return tdDao.getTienDo(maDK,maDot);
	}

}
