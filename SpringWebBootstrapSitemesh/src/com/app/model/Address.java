package com.app.model;


public class Address {
	
	private long adrId;
	private String adrHomeNum;
	private String adrRoad;
	private String adrProvince;
	private String adrZipCode;
	private String adrCusId;

	public String getAdrCusId() {
		return adrCusId;
	}

	public void setAdrCusId(String adrCusId) {
		this.adrCusId = adrCusId;
	}

	public long getAdrId() {
		return adrId;
	}

	public void setAdrId(long adrId) {
		this.adrId = adrId;
	}

	public String getAdrHomeNum() {
		return adrHomeNum;
	}

	public void setAdrHomeNum(String adrHomeNum) {
		this.adrHomeNum = adrHomeNum;
	}

	public String getAdrRoad() {
		return adrRoad;
	}

	public void setAdrRoad(String adrRoad) {
		this.adrRoad = adrRoad;
	}

	public String getAdrProvince() {
		return adrProvince;
	}

	public void setAdrProvince(String adrProvince) {
		this.adrProvince = adrProvince;
	}

	public String getAdrZipCode() {
		return adrZipCode;
	}

	public void setAdrZipCode(String adrZipCode) {
		this.adrZipCode = adrZipCode;
	}

	@Override
	public String toString() {
		return "Address [adrId=" + adrId + ", adrHomeNum=" + adrHomeNum
				+ ", adrRoad=" + adrRoad + ", adrProvince=" + adrProvince
				+ ", adrZipCode=" + adrZipCode + ", adrCusId=" + adrCusId + "]";
	}
		
}
