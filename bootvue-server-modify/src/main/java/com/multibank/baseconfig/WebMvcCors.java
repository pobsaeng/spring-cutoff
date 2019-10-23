package com.multibank.baseconfig;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Created by rajeevkumarsingh on 02/08/17.
 */

@Configuration
public class WebMvcCors implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
    	registry.addMapping("/**").allowedMethods("GET", "PUT", "POST", "GET", "OPTIONS");
    }
}
