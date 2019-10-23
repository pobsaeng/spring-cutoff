package com.app.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.app.dao.CustomerDao;
import com.app.model.Address;
import com.app.model.Customer;
@SuppressWarnings("unchecked")
public class CustomerDaoImpl extends HibernateDaoSupport implements CustomerDao {
	private JdbcTemplate jdbcTemplate;
		
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void insert(Customer customer)  {
		getHibernateTemplate().save(customer);
	}

	@Override
	public void update(Customer customer)  {
		getHibernateTemplate().update(customer);
	}

	@Override
	public void delete(Customer customer)  {
		getHibernateTemplate().delete(customer);
	}

	@Override
	public Customer findById(long Id)  {
		Customer customer = null;
		try {
			customer = (Customer) getHibernateTemplate().get(Customer.class, Id);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return customer;
	}

	@Override
	public Customer findByName(String name)  {
//		List<Customer> list = null;
//		try {
//			list = (List<Customer>) getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(Customer.class).add(Restrictions.eq("firstname", name)));
//		} catch (Exception ex) {
//			throw ex;
//		}
//		return list.get(0);
		
		 try {
			 String SQL = "SELECT * FROM Customer WHERE cusFirstName = ?";  
			 Customer cus = (Customer) jdbcTemplate.queryForObject(
					 SQL, 
					 new Object[]{name}, 
					 new BeanPropertyRowMapper<Customer>(Customer.class)); 
			 return cus;  
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<Customer> jdbcCustomerfindAll()  {
		try {
			String sql = "SELECT * FROM Customer";  
			List<Customer> cusList = getJdbcTemplate().query(sql, new BeanPropertyRowMapper(Customer.class));  
			  return cusList;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public Address findAddress(long Id) {
		Address cust = null;
		try {
			cust = (Address) getHibernateTemplate().get(Address.class, Id);
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return cust;
	}

	@Override
	public Customer jdbcCustomerfindById(long Id) {
		Customer customer = null;
		try {
			String sql = "SELECT * FROM Customer where cusId = ?";
			customer = (Customer)jdbcTemplate.queryForObject(
					sql, new Object[] {Id}, new RowMapper<Customer>() {
						@Override
						public Customer mapRow(ResultSet rs, int arg1)throws SQLException {
							Customer cust = new Customer();
							cust.setCusId(rs.getLong("cusId"));
							cust.setCusFirstName(rs.getString("cusFirstName"));
							cust.setCusLastName(rs.getString("cusLastName"));
							cust.setCusAge(rs.getInt("cusAge"));
							return cust;
						}
			});		
			
		} catch (Exception e) {
			return null;
		}
		
		return customer;
	}

	@Override
	public int findTotalCustomer() {
		String sql = "SELECT COUNT(*) FROM CUSTOMER";
		int total = jdbcTemplate.queryForInt(sql);
		return total;
	}

	@Override
	public List<Customer> jdbcCustomerfindAllRowMapper() {
		List<Customer> list = null;
		try {
		String sql = "select * from Customer";
		list =  jdbcTemplate.query(sql, new RowMapper<Customer>() {
			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer cust = new Customer();
				cust.setCusId(rs.getLong("cusId"));
				cust.setCusFirstName(rs.getString("cusFirstName"));
				cust.setCusLastName(rs.getString("cusLastName"));
				cust.setCusAge(rs.getInt("cusAge"));
				return cust;
			};
		});

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Customer> criCustomerfindAll() throws Exception {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(Customer.class);
			return getHibernateTemplate().findByCriteria(criteria);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Customer criCustomerfindByName(String name) throws Exception {
		try {		
			DetachedCriteria criteria = DetachedCriteria.forClass(Customer.class);
		    criteria.add(Restrictions.eq("cusFirstName", name));

			List<Customer> cusList = getHibernateTemplate().findByCriteria(criteria);
			
			if (cusList != null && cusList.size() == 1) {
				return cusList.get(0);
			} else{
				return null;
			}
				
		} catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Customer> listCustomer(final Integer offset, final Integer maxResults) {		
		final DetachedCriteria criteria = DetachedCriteria.forClass(Customer.class);
		List<Customer> result = getHibernateTemplate().execute(
		     new HibernateCallback<List<Customer>>() {
		         
				@Override
		         public List<Customer> doInHibernate(Session session) throws HibernateException,SQLException {
		        	 return criteria.getExecutableCriteria(session)
		        			 .setFirstResult(offset != null ? offset : 0)
		     				 .setMaxResults(maxResults != null ? maxResults : 10).list();
		         }
		     });
		return result;
	}

	@Override
	public int countCustomer() {
		 return DataAccessUtils.intResult(getHibernateTemplate().find("select count(*) from Customer"));
	}
	
}