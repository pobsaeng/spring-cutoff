package com.multibank.security;

import java.sql.Timestamp;

public class APIException {
	private String message;
	private String error;
	private String status;
	private String path;
	private Timestamp timestamp;

	public APIException() {
	}

	public APIException(String message, String error, String status, String path, Timestamp timestamp) {
		this.message = message;
		this.error = error;
		this.status = status;
		this.path = path;
		this.timestamp = timestamp;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
}
