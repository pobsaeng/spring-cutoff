package com.app.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.app.dao.AddressDao;
import com.app.model.Address;

public class AddressDaoImpl extends HibernateDaoSupport implements AddressDao {

	@Override
	public List<Address> findAllAddress() {
		List<Address> listAd = getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(Address.class));
		return listAd;
	}
	
}