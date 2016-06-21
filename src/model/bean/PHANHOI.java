package model.bean;

public class PHANHOI {
	private String maphanhoi;
	private String mssv;
	private String kieuPh;
	private String noidung;
	private String madot;
	private Boolean xacnhan;
	private String tenSV;
	private String ngayLap;
	private String maGVHD;
	private String maDK;
	private String tenDeTai; 
	private String mDT;
	public PHANHOI(String maphanhoi,String tenSV, String mssv, String tieude,
			String noidung, String madot, Boolean xacnhan) {
		super();
		this.maphanhoi = maphanhoi;
		this.mssv = mssv;
		this.kieuPh = tieude;
		this.noidung = noidung;
		this.madot = madot;
		this.xacnhan = xacnhan;
		this.tenSV = tenSV;
	}
	public PHANHOI() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMaphanhoi() {
		return maphanhoi;
	}
	public void setMaphanhoi(String maphanhoi) {
		this.maphanhoi = maphanhoi;
	}
	public String getMssv() {
		return mssv;
	}
	public void setMssv(String mssv) {
		this.mssv = mssv;
	}
	public String getKieuPh() {
		return kieuPh;
	}
	public void setKieuPh(String tieude) {
		this.kieuPh = tieude;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public String getMadot() {
		return madot;
	}
	public void setMadot(String madot) {
		this.madot = madot;
	}
	public Boolean getXacnhan() {
		return xacnhan;
	}
	public void setXacnhan(Boolean b) {
		this.xacnhan = b;
	}
	public String getTenSV() {
		return tenSV;
	}
	public void setTenSV(String tenSV) {
		this.tenSV = tenSV;
	}
	public String getNgayLap() {
		return ngayLap;
	}
	public void setNgayLap(String ngayLap) {
		this.ngayLap = ngayLap;
	}
	public String getMaGVHD() {
		return maGVHD;
	}
	public void setMaGVHD(String maGVHD) {
		this.maGVHD = maGVHD;
	}
	public String getMaDK() {
		return maDK;
	}
	public void setMaDK(String maDK) {
		this.maDK = maDK;
	}
	public String getTenDeTai() {
		return tenDeTai;
	}
	public void setTenDeTai(String tenDeTai) {
		this.tenDeTai = tenDeTai;
	}
	public String getmDT() {
		return mDT;
	}
	public void setmDT(String mDT) {
		this.mDT = mDT;
	}

	
	
}
