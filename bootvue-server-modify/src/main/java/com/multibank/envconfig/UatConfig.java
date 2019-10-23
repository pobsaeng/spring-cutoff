package com.multibank.envconfig;

import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Service
@Profile("uat")
public class UatConfig implements BasedCofig {

	@Override
	public void setup() {
		System.out.println("UAT config is setup..");
	}
}
