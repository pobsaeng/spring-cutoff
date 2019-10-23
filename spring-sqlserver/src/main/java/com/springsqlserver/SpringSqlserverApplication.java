package com.springsqlserver;

import com.springsqlserver.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringSqlserverApplication implements CommandLineRunner {


    public static void main(String[] args) {
        SpringApplication.run(SpringSqlserverApplication.class, args);
    }

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public void run(String... args) throws Exception {
    	System.out.println("-categoryRepository-");
		System.out.println(categoryRepository.findAll());
    }
}
