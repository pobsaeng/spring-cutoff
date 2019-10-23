package com.app.dao;

import java.util.List;

import com.app.model.Address;
import com.app.model.Customer;

public interface CustomerDao {
	public void insert(Customer customer) throws Exception;
	public void update(Customer customer) throws Exception;
	public void delete(Customer customer) throws Exception;
	public Customer findById(long Id) throws Exception;
	public Customer findByName(String name) throws Exception;
	public Address findAddress(long Id) throws Exception;
	
	public Customer jdbcCustomerfindById(long Id) throws Exception;
	public List<Customer> jdbcCustomerfindAll() throws Exception;	
	public List<Customer> jdbcCustomerfindAllRowMapper() throws Exception;	
	
	public int findTotalCustomer() throws Exception;
	
	public List<Customer> criCustomerfindAll() throws Exception;
	public Customer criCustomerfindByName(String name) throws Exception;
	public List<Customer> listCustomer(Integer offset, Integer maxResults);
	public int countCustomer();
}
