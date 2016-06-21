package model.bean;

public class DETAI {
	private String madetai;
	private String tendetai;
	private String macn;
	private String thongtinnoidung;
	private String magvhd;
	public DETAI(String madetai, String tendetai, String macn,
			String thongtinnoidung, String magvhd) {
		super();
		this.madetai = madetai;
		this.tendetai = tendetai;
		this.macn = macn;
		this.thongtinnoidung = thongtinnoidung;
		this.magvhd = magvhd;
	}
	public DETAI() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMadetai() {
		return madetai;
	}
	public void setMadetai(String madetai) {
		this.madetai = madetai;
	}
	public String getTendetai() {
		return tendetai;
	}
	public void setTendetai(String tendetai) {
		this.tendetai = tendetai;
	}
	public String getMacn() {
		return macn;
	}
	public void setMacn(String macn) {
		this.macn = macn;
	}
	public String getThongtinnoidung() {
		return thongtinnoidung;
	}
	public void setThongtinnoidung(String thongtinnoidung) {
		this.thongtinnoidung = thongtinnoidung;
	}
	public String getMagvhd() {
		return magvhd;
	}
	public void setMagvhd(String magvhd) {
		this.magvhd = magvhd;
	}
	
}
