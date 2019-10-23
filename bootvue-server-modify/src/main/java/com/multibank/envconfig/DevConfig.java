package com.multibank.envconfig;

import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Service
@Profile("dev")
public class DevConfig implements BasedCofig {

	@Override
	public void setup() {
		System.out.println("Developer configurations is setup..");
	}

}
