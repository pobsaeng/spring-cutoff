package com.app.service.impl;
 
import java.util.List;

import com.app.dao.CustomerDao;
import com.app.model.Address;
import com.app.model.Customer;
import com.app.service.CustomerService;
 
public class CustomerServiceImpl implements CustomerService{
 
	private CustomerDao customerDao;

	public CustomerDao getCustomerDao() {
		return customerDao;
	}

	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	@Override
	public void addCustomer(Customer customer) throws Exception {
		customerDao.insert(customer);
	}

	@Override
	public Customer listCustomerfindByName(String name) throws Exception {	
		return (Customer)customerDao.findByName(name);
		
	}

	@Override
	public void updateCustomer(Customer customer) throws Exception {
		customerDao.update(customer);		
	}

	@Override
	public void deleteCustomer(Customer customer) throws Exception {
		customerDao.delete(customer);		
	}

	@Override
	public Address listCustomerByAdress(long Id) throws Exception {
		return (Address)customerDao.findAddress(Id);
	}

	@Override
	public Customer listCustomerfindById(long Id) throws Exception {
		return (Customer)customerDao.findById(Id);
	}

	@Override
	public List<Customer> jdbcListCustomerfindAll() throws Exception {
		return customerDao.jdbcCustomerfindAll();
	}

	@Override
	public Customer jdbcListCustomerfindById(long Id) throws Exception {
		return customerDao.jdbcCustomerfindById(Id);
	}

	@Override
	public int getTotalCustomer() throws Exception {
		return customerDao.findTotalCustomer();
	}

	@Override
	public List<Customer> listCriCustomerfindAll() throws Exception {
		return customerDao.criCustomerfindAll();
	}

	@Override
	public Customer listCriCustomerfindByName(String name) throws Exception {
		return customerDao.criCustomerfindByName(name);
	}

	@Override
	public List<Customer> list(Integer offset, Integer maxResults) {
		return customerDao.listCustomer(offset, maxResults);
	}

	@Override
	public int count() {
		return customerDao.countCustomer();
	}
	
}