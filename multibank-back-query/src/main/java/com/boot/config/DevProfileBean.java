package com.boot.config;

import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Service
@Profile("dev")
public class DevProfileBean implements EnvBasedCofig {

	@Override
	public void setup() {
		System.out.println("Develop config is setup..");
	}

}
