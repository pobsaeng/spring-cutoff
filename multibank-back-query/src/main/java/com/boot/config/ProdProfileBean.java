package com.boot.config;

import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Service
@Profile("prod")
public class ProdProfileBean implements EnvBasedCofig {

	@Override
	public void setup() {
		System.out.println("Production config is setup..");
	}
}
