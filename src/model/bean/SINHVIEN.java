package model.bean;

public class SINHVIEN {
	private String mssv;
	private String hoten;
	private String ngaysinh;
	private String malop;
	private String macn;
	private String email;
	private String sdt;
	public SINHVIEN(String mssv, String hoten, String ngaysinh, String malop,
			String macn, String email, String sdt) {
		super();
		this.mssv = mssv;
		this.hoten = hoten;
		this.ngaysinh = ngaysinh;
		this.malop = malop;
		this.macn = macn;
		this.email = email;
		this.sdt = sdt;
	}
	public SINHVIEN() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMssv() {
		return mssv;
	}
	public void setMssv(String mssv) {
		this.mssv = mssv;
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
	public String getMalop() {
		return malop;
	}
	public void setMalop(String malop) {
		this.malop = malop;
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
	
}
