package com.boot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.boot.config.EnvBasedCofig;

@SpringBootApplication
@ComponentScan(basePackageClasses = { SpringBootAppApplication.class })
public class SpringBootAppApplication  implements CommandLineRunner {

	 @Autowired
		private EnvBasedCofig envConfig;
		
		public static void main(String[] args) {
			SpringApplication.run(SpringBootAppApplication.class, args);
		}

		@Override
		public void run(String... args) throws Exception {
			envConfig.setup();
		}
}
