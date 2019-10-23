package com.app.client;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.app.model.Address;
import com.app.model.Customer;
import com.app.service.impl.CustomerServiceImpl;
public class TestCustomer {

	private static ApplicationContext context;
	public static void main(String[] args) throws Exception {
		context = new ClassPathXmlApplicationContext(new String[] { 
				"applicationContext-ds.xml", 
				"applicationContext-dao.xml", 
				"applicationContext-service.xml"});
		
		CustomerServiceImpl cusSv = (CustomerServiceImpl) context.getBean("customerService");
//		getCustomerByKey(cusSv, "ByName", "Kraipob");
//		geTjdbcCustomerfindAll(cusSv);
//		getAddressByCustomer(cusSv);
//		geTjdbcCustomerById(cusSv);
//		getCriCutomerfindAll(cusSv);
//		getCriCutomerfindByName(cusSv);
//		insertCust(cusSv);
		
//		Customer customer = new Customer();
//		customer.setCusId(8);
//		cusSv.deleteCustomer(customer);
		List<Customer> c = cusSv.list(0, 10);
		for (Customer customer : c) {
			System.out.println(customer.getCusFirstName());
		}
	}
	
	public static void insertCust(CustomerServiceImpl cusSv) throws Exception{
		Customer cus = new Customer();
		cus.setCusFirstName("Kraipob");
		cus.setCusLastName("Saengkhunthod");
		cusSv.addCustomer(cus);
		System.out.println("Insert Success!!");
	}
	public static void geTjdbcCustomerfindAll(CustomerServiceImpl cusSv) throws Exception{
		List<Customer> listCus = cusSv.jdbcListCustomerfindAll();
		if(listCus != null){
			for (Customer customer : listCus) {
				System.out.println(customer.getCusId()+", "
						+ customer.getCusFirstName()+", "
						+ customer.getCusLastName()+", "
						+ customer.getCusAge());
			}
		}
	}
	public static void getCustomerByKey(CustomerServiceImpl cusSv, String key, String value) throws Exception{
		if(key.equals("ById"))System.out.println(cusSv.listCustomerfindById(Long.parseLong(value)));
		if(key.equals("ByName"))System.out.println(cusSv.listCustomerfindByName(value));
	}
	public static void getAddressByCustomer(CustomerServiceImpl cusSv) throws Exception{
		Customer cus = cusSv.listCustomerfindById(1);
		Address address = (Address)cusSv.listCustomerByAdress(cus.getCusId());
		System.out.println(address);
	}
	public static void geTjdbcCustomerById(CustomerServiceImpl cusSv) throws Exception{
		Customer customer = cusSv.jdbcListCustomerfindById(10);
		if(customer != null){
			System.out.println(customer);
		}
	}
	public static void getCriCutomerfindAll(CustomerServiceImpl cusSv) throws Exception{
		List<Customer> list = cusSv.listCriCustomerfindAll();
		for (Customer customer : list) {
			System.out.println(customer);
		}
	}
	public static void getCriCutomerfindByName(CustomerServiceImpl cusSv) throws Exception{
		Customer customer = cusSv.listCriCustomerfindByName("Pob");
		if(customer != null){
			System.out.println(customer.getCusId()+", "
					+ customer.getCusFirstName()+", "
					+ customer.getCusLastName()+", "
					+ customer.getCusAge());
		}
	}
}
