package com.boot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.boot.model.Book;

@Service
public class JdbcTemplateService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Book> findAllByJdbcTpl() {
		
		List<Book> books = jdbcTemplate.query("select * from book", new BeanPropertyRowMapper(Book.class));
		
		return books;
	}
	
	public int countRowsInTable(String tableName) {
		
		Integer result = jdbcTemplate.queryForObject("SELECT COUNT(0) FROM " + tableName, Integer.class);
		return (result != null ? result : 0);
	}
}
