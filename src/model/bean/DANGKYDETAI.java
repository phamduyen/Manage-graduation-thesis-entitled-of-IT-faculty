package model.bean;

public class DANGKYDETAI {
	private String mdk;
	private String mdt;
	private boolean hinhthuc;
	private String mssv1;
	private String mssv2;
	private String ngaydk;
	public DANGKYDETAI() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DANGKYDETAI(String mdk, String mdt, boolean hinhthuc, String mssv1,
			String mssv2, String ngaydk) {
		super();
		this.mdk = mdk;
		this.mdt = mdt;
		this.hinhthuc = hinhthuc;
		this.mssv1 = mssv1;
		this.mssv2 = mssv2;
		this.ngaydk = ngaydk;
	}
	public String getMdk() {
		return mdk;
	}
	public void setMdk(String mdk) {
		this.mdk = mdk;
	}
	public String getMdt() {
		return mdt;
	}
	public void setMdt(String mdt) {
		this.mdt = mdt;
	}
	public boolean isHinhthuc() {
		return hinhthuc;
	}
	public void setHinhthuc(boolean hinhthuc) {
		this.hinhthuc = hinhthuc;
	}
	public String getMssv1() {
		return mssv1;
	}
	public void setMssv1(String mssv1) {
		this.mssv1 = mssv1;
	}
	public String getMssv2() {
		return mssv2;
	}
	public void setMssv2(String mssv2) {
		this.mssv2 = mssv2;
	}
	public String getNgaydk() {
		return ngaydk;
	}
	public void setNgaydk(String ngaydk) {
		this.ngaydk = ngaydk;
	}
	
}

