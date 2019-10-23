package com.app.model;

public class Users implements java.io.Serializable {

	private int userId;
	private String userName;
	private String password;
	private Boolean enabled;

	public Users() {
	}

	public Users(int userId, String userName, String password) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
	}

	public Users(int userId, String userName, String password, Boolean enabled) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.enabled = enabled;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getEnabled() {
		return this.enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

}
