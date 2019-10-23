package com.app.service.impl;
 
import java.util.List;

import com.app.dao.AddressDao;
import com.app.model.Address;
import com.app.service.AddressService;
 
public class AddressServiceImpl implements AddressService{
	private AddressDao addressDao;
	
	public AddressDao getAddressDao() {
		return addressDao;
	}

	public void setAddressDao(AddressDao addressDao) {
		this.addressDao = addressDao;
	}

	@Override
	public List<Address> searcgAllAddress() {
		return addressDao.findAllAddress();
	}

}