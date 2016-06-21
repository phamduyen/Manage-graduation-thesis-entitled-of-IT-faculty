package model.bo;

import java.util.ArrayList;

import model.bean.DATTG;
import model.dao.DotDanhGiaDAO;

public class DotDanhGiaBO {
	DotDanhGiaDAO  dotDao = new DotDanhGiaDAO();
	
	public DATTG getDot(String maDot) {
		// TODO Auto-generated method stub
		return dotDao.getDot(maDot);
	}
	public ArrayList<DATTG> getListDot(){
		return dotDao.getListDot();
	}
	

}
