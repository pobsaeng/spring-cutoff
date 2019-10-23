package com.app.client;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.app.model.Users;
import com.app.service.impl.UsersServiceImpl;
public class TestUsers {

	private static ApplicationContext context;
	public static void main(String[] args) throws Exception {
		context = new ClassPathXmlApplicationContext(new String[] {"applicationContext-main.xml"});
		
		UsersServiceImpl usDaoImp = (UsersServiceImpl) context.getBean("usersService");
		Users u = usDaoImp.getUserByLogin("pob");
		
//		for (String string : role) {
			System.out.println("role : "+u.getPassword());
//		}
		
	}

}
