package com.app.model;


public class UserRoles implements java.io.Serializable {

	private int userRoleId;
	private int userId;
	private String authority;

	public UserRoles() {
	}

	public UserRoles(int userRoleId, int userId, String authority) {
		this.userRoleId = userRoleId;
		this.userId = userId;
		this.authority = authority;
	}

	public int getUserRoleId() {
		return this.userRoleId;
	}

	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getAuthority() {
		return this.authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

}
