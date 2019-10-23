package com.app.service;
 
import java.util.List;

import com.app.model.Address;
import com.app.model.Customer;
 
public interface CustomerService{
 
	public void addCustomer(Customer customer) throws Exception;
	public void updateCustomer(Customer customer) throws Exception;
	public void deleteCustomer(Customer customer) throws Exception;
	public Customer listCustomerfindById(long Id) throws Exception;
	public Customer listCustomerfindByName(String name) throws Exception;
	public Address listCustomerByAdress(long Id) throws Exception;
	
	public List<Customer> jdbcListCustomerfindAll() throws Exception;
	public Customer jdbcListCustomerfindById(long Id) throws Exception;
	
	public int getTotalCustomer() throws Exception;
	
	public List<Customer>listCriCustomerfindAll()throws Exception;
	public Customer listCriCustomerfindByName(String name) throws Exception;
	public List<Customer> list(Integer offset, Integer maxResults);
	public int count();
}