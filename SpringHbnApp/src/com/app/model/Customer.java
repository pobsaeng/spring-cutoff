package com.app.model;

import java.io.Serializable;

public class Customer implements Serializable{
	private long cusId;
	private String cusFirstName;
	private String cusLastName;
	private int cusAge;

//	private Set<Address> addresses;
//	
//	public Set<Address> getAddresses() {
//		return addresses;
//	}
//
//	public void setAddresses(Set<Address> addresses) {
//		this.addresses = addresses;
//	}

	public long getCusId() {
		return cusId;
	}

	public void setCusId(long cusId) {
		this.cusId = cusId;
	}
	
	public String getCusFirstName() {
		return cusFirstName;
	}

	public void setCusFirstName(String cusFirstName) {
		this.cusFirstName = cusFirstName;
	}

	public String getCusLastName() {
		return cusLastName;
	}

	public void setCusLastName(String cusLastName) {
		this.cusLastName = cusLastName;
	}

	public int getCusAge() {
		return cusAge;
	}

	public void setCusAge(int cusAge) {
		this.cusAge = cusAge;
	}

	@Override
	public String toString() {
		return "Customer [cusId=" + cusId + ", cusFirstName=" + cusFirstName
				+ ", cusLastName=" + cusLastName + ", cusAge=" + cusAge
				+ "]";
	}

	
}
