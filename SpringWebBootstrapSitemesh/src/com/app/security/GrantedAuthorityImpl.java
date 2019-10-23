package com.app.security;

import org.springframework.security.core.GrantedAuthority;

@SuppressWarnings("serial")
public class GrantedAuthorityImpl implements GrantedAuthority {

	private String role;
	public GrantedAuthorityImpl(String role) {
		this.role = role;
	}

	public String getAuthority() {
		return role;
	}
}