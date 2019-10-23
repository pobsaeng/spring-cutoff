package com.multibank.exception;
import org.springframework.security.core.AuthenticationException;
public class UsernameNotFoundException extends AuthenticationException {

	public UsernameNotFoundException(String msg) {
		super(msg);
	}

	public UsernameNotFoundException(String msg, Throwable t) {
		super(msg, t);
	}
}
