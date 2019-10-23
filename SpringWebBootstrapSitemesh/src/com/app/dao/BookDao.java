package com.app.dao;
import java.util.List;

import com.app.model.Book;

public interface BookDao {
	public void add(Book book) throws Exception;
	public void update(Book book) throws Exception;
	public void delete(Book book) throws Exception;
	public List<Book> findAllBook() throws Exception;	
	public Book findById(String id) throws Exception;
	public List<Book> list(Integer offset, Integer maxResults) throws Exception;
	public int count() throws Exception;
	public List<Book> listBookInterval(int start, int limit) throws Exception;
}
