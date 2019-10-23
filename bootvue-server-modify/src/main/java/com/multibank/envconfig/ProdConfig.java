package com.multibank.envconfig;

import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Service
@Profile("prod")
public class ProdConfig implements BasedCofig {

	@Override
	public void setup() {
		System.out.println("Production configurations is setup..");
	}
}
