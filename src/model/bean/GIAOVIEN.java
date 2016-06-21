package model.bean;

public class GIAOVIEN {
	private String magvhd;
	private String hoten;
	private String ngaysinh;
	private String macn;
	private String email;
	private String sdt;
	private String diachi;
	public GIAOVIEN(String magvhd, String hoten, String ngaysinh, String macn,
			String email, String sdt, String diachi) {
		super();
		this.magvhd = magvhd;
		this.hoten = hoten;
		this.ngaysinh = ngaysinh;
		this.macn = macn;
		this.email = email;
		this.sdt = sdt;
		this.diachi=diachi;
	}
	public GIAOVIEN() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMagvhd() {
		return magvhd;
	}
	public void setMagvhd(String magvhd) {
		this.magvhd = magvhd;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getMacn() {
		return macn;
	}
	public void setMacn(String macn) {
		this.macn = macn;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public void setDiaChi(String diachi) {
		this.diachi = diachi;
	}
	public String getDiaChi() {
		return diachi;
	}
	
}
