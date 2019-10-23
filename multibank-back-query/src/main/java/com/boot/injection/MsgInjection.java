package com.boot.injection;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:messages.properties")
public class MsgInjection {
	@Value(value = "${msg.error}")
	private String error;
	@Value(value = "${msg.warning}")
	private String warning;
	@Value(value = "${msg.alert}")
	private String alert;
	@Value(value = "${msg.text}")
	private String text;
	
	public String getError() {
		return error;
	}
	public String getWarning() {
		return warning;
	}
	public String getAlert() {
		return alert;
	}
	public String getText() {
		return text;
	}
}
