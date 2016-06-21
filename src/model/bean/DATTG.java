package model.bean;

public class DATTG {
	private String madot;
	private String tendot;
	private String thoigiandot;
	public DATTG(String madot, String tendot, String thoigiandot) {
		super();
		this.madot = madot;
		this.tendot = tendot;
		this.thoigiandot = thoigiandot;
	}
	public DATTG() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMadot() {
		return madot;
	}
	public void setMadot(String madot) {
		this.madot = madot;
	}
	public String getTendot() {
		return tendot;
	}
	public void setTendot(String tendot) {
		this.tendot = tendot;
	}
	public String getThoigiandot() {
		return thoigiandot;
	}
	public void setThoigiandot(String thoigiandot) {
		this.thoigiandot = thoigiandot;
	}
	
}
