package com.app.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.app.dao.UsersDao;
import com.app.model.UserRoles;
import com.app.model.Users;

@SuppressWarnings("unchecked")
public class UsersDaoImpl implements UsersDao{
	private JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {return jdbcTemplate;}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;}
    
	private HibernateTemplate hibernateTemplate;
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {hibernateTemplate = new HibernateTemplate(sessionFactory);}
	
	@Override public void add(Users users) throws Exception {hibernateTemplate.save(users);}
	
	@Override public void update(Users users) throws Exception {hibernateTemplate.update(users);}
	
	@Override public void delete(Users users) throws Exception {hibernateTemplate.delete(users);}
	
	@Override
	public List<Users> findAllUsers() throws Exception {
		DetachedCriteria criteria = DetachedCriteria.forClass(Users.class);
		List<Users> users = hibernateTemplate.findByCriteria(criteria);
		return users;
	}

	@Override
	public Users findUsersById(String id) throws Exception {
		DetachedCriteria criteria = DetachedCriteria.forClass(Users.class);
	    criteria.add(Restrictions.eq("userId", id));
		List<Users> users = hibernateTemplate.findByCriteria(criteria);
		
		if (users != null && users.size() == 1) {
			return users.get(0);
		} else{
			return null;
		}
	}

	@Override
	public Users findUserByLogin(String username) throws Exception {
		DetachedCriteria criteria = DetachedCriteria.forClass(Users.class);
	    criteria.add(Restrictions.eq("userName", username));
		List<Users> users = hibernateTemplate.findByCriteria(criteria);
		
		if (users != null && users.size() == 1) {
			return users.get(0);
		} else{
			return null;
		}
	}

	@Override
	public List<String> findUserRoles(String username) throws Exception {
		List<String> roles = new ArrayList<String>();
		
		String sql = "SELECT ur.authority from users u, user_roles ur where u.user_id=ur.user_id and u.user_name=?"; 
		List<UserRoles> userroles = jdbcTemplate.query(sql, 
				new Object[]{username}, 
				new BeanPropertyRowMapper<UserRoles>(UserRoles.class));  
		
		if (userroles != null && userroles.size() >= 1) {
			for (UserRoles uroles : userroles) {
				roles.add(uroles.getAuthority());
			}
		}
		
		return roles.size() > 0? roles : null;
	}

}
