package model.bean;

public class BAOCAO {
	private String madangki; 
	private String ngaynop;
	private String madot;
	public BAOCAO(String madangki, String ngaynop, String madot) {
		super();
		this.madangki = madangki;
		this.ngaynop = ngaynop;
		this.madot = madot;
	}
	public BAOCAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMadangki() {
		return madangki;
	}
	public void setMadangki(String madangki) {
		this.madangki = madangki;
	}
	public String getNgaynop() {
		return ngaynop;
	}
	public void setNgaynop(String ngaynop) {
		this.ngaynop = ngaynop;
	}
	public String getMadot() {
		return madot;
	}
	public void setMadot(String madot) {
		this.madot = madot;
	}
	
}
