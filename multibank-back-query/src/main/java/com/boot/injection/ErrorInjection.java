package com.boot.injection;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:messages.properties")
public class ErrorInjection {
	@Value(value = "${error.msg}")
	private String msgError;
	
	@Value(value = "${error.table}")
	private String msgTable;
	
	@Value(value = "${error.title}")
	private String msgTitle;

	public String getMsgError() {
		return msgError;
	}

	public String getMsgTable() {
		return msgTable;
	}

	public String getMsgTitle() {
		return msgTitle;
	}

}
