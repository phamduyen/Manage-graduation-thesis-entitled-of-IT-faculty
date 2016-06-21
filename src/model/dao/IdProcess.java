package model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

public class IdProcess extends BaseDAO {

	BaseDAO db = new BaseDAO();
	
	//xu ly cat 3 so cuoi cua ID o vi tri cuoi cung trong Bang
	public int getID(String id, String tenBang){
		//String idProcess = null;
		int idInt = 0;
		db.getconnection();
		//cat so tu id
		String qr = "SELECT MAX(cast(SUBSTRING("+id+",3,3)as int)) as iD "
				+ "FROM  "+tenBang+" ";
		rs = db.getResultSet(qr);
		try {
			if(rs.next()){
				 idInt = rs.getInt("iD");
				//System.out.println("cat chuoi: "+idInt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			db.closeConnection();
		}
		return idInt+1;
	}
/*	public static void main(String[] agrs){
		IdProcess idProcess=new IdProcess();
		int id = idProcess.getID("MaTB", "THONGBAO");
		System.out.println(id);
	}*/
}
