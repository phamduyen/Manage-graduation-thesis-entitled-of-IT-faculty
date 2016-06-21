package model.bean;

public class THONGBAO {
	private String matb;
	private String magvhd;
	private String tieude;
	private String noidung;
	private String ngaytb;
	private String filedinhkem;
	private boolean kieutb;
	private String doituong;
	public THONGBAO(String matb, String magvhd, String tieude, String noidung,
			String ngaytb, String filedinhkem, String doituong2) {
		super();
		this.matb = matb;
		this.magvhd = magvhd;
		this.tieude = tieude;
		this.noidung = noidung;
		this.ngaytb = ngaytb;
		this.filedinhkem = filedinhkem;
		this.doituong = doituong2;
	}
	public THONGBAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public THONGBAO(String matb2, String magvhd2, String tieude2, String noidung2, boolean kieutb2, String ngaytb2,
			String filedinhkem2, String doituong) {
		this.matb = matb2;
		this.magvhd = magvhd2;
		this.tieude = tieude2;
		this.noidung = noidung2;
		this.ngaytb = ngaytb2;
		this.filedinhkem = filedinhkem2;
		this.kieutb = kieutb2;
		this.setDoituong(doituong);
		// TODO Auto-generated constructor stub
	}
	public String getMatb() {
		return matb;
	}
	public void setMatb(String matb) {
		this.matb = matb;
	}
	public String getMagvhd() {
		return magvhd;
	}
	public void setMagvhd(String magvhd) {
		this.magvhd = magvhd;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public String getNgaytb() {
		return ngaytb;
	}
	public void setNgaytb(String ngaytb) {
		this.ngaytb = ngaytb;
	}
	public String getFiledinhkem() {
		return filedinhkem;
	}
	public void setFiledinhkem(String filedinhkem) {
		this.filedinhkem = filedinhkem;
	}
	public boolean  getKieutb() {
		return kieutb;
	}
	public void setKieutb(boolean kieutb) {
		this.kieutb = kieutb;
	}
	public String getDoituong() {
		return doituong;
	}
	public void setDoituong(String doituong) {
		this.doituong = doituong;
	}
	
}
