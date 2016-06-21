package model.bean;

public class DANHGIA {
	private String madangky;
	private String madot;
	private String noidung;
	private float tiendo;
	private String tenDT ;
	private String tenDot;
	public String getTenDT() {
		return tenDT;
	}
	public void setTenDT(String tenDT) {
		this.tenDT = tenDT;
	}
	public String getTenDot() {
		return tenDot;
	}
	public void setTenDot(String tenDot) {
		this.tenDot = tenDot;
	}

	public DANHGIA(String madangky, String madot, String noidung, float tiendo) {
		super();
		this.madangky = madangky;
		this.madot = madot;
		this.noidung = noidung;
		this.tiendo = tiendo;
	}
	public DANHGIA() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMadangky() {
		return madangky;
	}
	public void setMadangky(String madangky) {
		this.madangky = madangky;
	}
	public String getMadot() {
		return madot;
	}
	public void setMadot(String madot) {
		this.madot = madot;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public float getTiendo() {
		return tiendo;
	}
	public void setTiendo(float tiendo) {
		this.tiendo = tiendo;
	}
	
	
}
