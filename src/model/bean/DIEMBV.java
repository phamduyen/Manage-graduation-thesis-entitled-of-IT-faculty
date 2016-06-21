package model.bean;

public class DIEMBV {
	private String madangki;
	private String ngaynhap;
	private float gv1;
	private float gv2;
	private float gv3;
	private float tb;
	private String tenDT;
	public float getTb() {
		return tb;
	}
	public void setTb(float tb) {
		this.tb = tb;
	}
	public String getTenDT() {
		return tenDT;
	}
	public void setTenDT(String tenDT) {
		this.tenDT = tenDT;
	}
	public DIEMBV(String madangki, String ngaynhap, float gv1, float gv2,
			float gv3) {
		super();
		this.madangki = madangki;
		this.ngaynhap = ngaynhap;
		this.gv1 = gv1;
		this.gv2 = gv2;
		this.gv3 = gv3;
	}
	public DIEMBV() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMadangki() {
		return madangki;
	}
	public void setMadangki(String madangki) {
		this.madangki = madangki;
	}
	public String getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(String ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	public float getGv1() {
		return gv1;
	}
	public void setGv1(float gv1) {
		this.gv1 = gv1;
	}
	public float getGv2() {
		return gv2;
	}
	public void setGv2(float gv2) {
		this.gv2 = gv2;
	}
	public float getGv3() {
		return gv3;
	}
	public void setGv3(float gv3) {
		this.gv3 = gv3;
	}
	
}
