package com.app.client;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.app.model.Address;
import com.app.service.impl.AddressServiceImpl;
public class TestAddress {

	private static ApplicationContext context;
	public static void main(String[] args) throws Exception {
		context = new ClassPathXmlApplicationContext(new String[] { 
				"applicationContext-ds.xml", 
				"applicationContext-dao.xml", 
				"applicationContext-service.xml"});
		
//		CustomerServiceImpl cusSv = (CustomerServiceImpl) context.getBean("customerService");
//		List<Customer> listCust = cusSv.
	
		AddressServiceImpl adr = (AddressServiceImpl) context.getBean("addressService");
		List<Address> listAdrSrv = adr.searcgAllAddress();
		for (Address address : listAdrSrv) {
			System.out.println(address);
		}
		
	}

}
