package com.app.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.app.dao.BookDao;
import com.app.model.Book;
@SuppressWarnings("unchecked")
public class BookDaoImpl extends HibernateDaoSupport implements BookDao{
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void add(Book book) throws Exception {
		getHibernateTemplate().save(book);
	}

	@Override
	public void update(Book book) throws Exception {
		getHibernateTemplate().update(book);		
	}

	@Override
	public void delete(Book book) throws Exception {
		getHibernateTemplate().delete(book);		
	}

	@Override
	public List<Book> findAllBook() throws Exception {
		try {
			String sql = "SELECT * FROM Book";  
			List<Book> cusList = getJdbcTemplate().query(sql, new BeanPropertyRowMapper<Book>(Book.class));  
			  return cusList;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public Book findById(String id) throws Exception {
		DetachedCriteria criteria = DetachedCriteria.forClass(Book.class);
	    criteria.add(Restrictions.eq("isbn", id));

		List<Book> book = getHibernateTemplate().findByCriteria(criteria);
		
		if (book != null && book.size() == 1) {
			return book.get(0);
		} else{
			return null;
		}
	}

	@Override
	public List<Book> list(final Integer offset, final Integer maxResults) throws Exception {
		List<Book> list = getHibernateTemplate().execute(  
	             new HibernateCallback<List<Book>>() {  
					@Override  
	                 public List<Book> doInHibernate(Session session)  
	                         throws HibernateException, SQLException {  
	                     Query query = session.createQuery("from Book"); 
	                     query.setFirstResult(offset != null ? offset : 0);
	         			 query.setMaxResults(maxResults != null ? maxResults : 10);
	                     return query.list();  
	                 }  
	             });  
	         return list; 
	}

	@Override
	public int count() throws Exception {
		 return DataAccessUtils.intResult(getHibernateTemplate().find("select count(*) from Book"));
	}

}
