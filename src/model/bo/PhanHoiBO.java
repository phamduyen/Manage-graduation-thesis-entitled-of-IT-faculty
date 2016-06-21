package model.bo;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.PHANHOI;
import model.dao.PhanHoiDAO;

public class PhanHoiBO {
	PhanHoiDAO phDAO = new PhanHoiDAO();
	public ArrayList<PHANHOI> getPhanHoiList_GV(String MaGVHD) throws SQLException {
		// TODO Auto-generated method stub
		return phDAO.getPhanHoiList_GV(MaGVHD);
	}
	public PHANHOI getPhanHoi(String maPH) {
		
		return phDAO.getPhanHoi(maPH);
	}
	
	/*//main
	  public static void main(String[] args) { 
		  PhanHoiBO phDao = new  PhanHoiBO(); 
		  try { ArrayList<PHANHOI> phList = phDao.getPhanHoiList_GV("GV001"); 
		  for (PHANHOI phanhoi : phList) {
			  System.out.println(phanhoi.getMaphanhoi()); }
	  
		  		} catch (SQLException e) { // TODO Auto-generated catch block
	  
		  			e.printStackTrace();} 
		  			PHANHOI ph = phDao.getPhanHoi("PH002");
		  			if(!ph.equals(null)){
		  				System.out.println(ph.getMaDK());
		  				System.out.println(ph.getTenSV());
		  			}else{
		  				System.out.println("khong có dữ liệu");
		  			}
	 
	  			}*/
}
