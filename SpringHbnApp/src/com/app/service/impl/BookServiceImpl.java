package com.app.service.impl;
 
import java.util.List;

import com.app.dao.BookDao;
import com.app.model.Book;
import com.app.service.BookService;
 
public class BookServiceImpl implements BookService{
	private BookDao bookDao;

	public BookDao getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	@Override
	public void addBook(Book book) throws Exception {
		bookDao.add(book);	
	}

	@Override
	public void updateBook(Book book) throws Exception {
		bookDao.update(book);	
	}

	@Override
	public void deleteBook(Book book) throws Exception {
		bookDao.delete(book);		
	}

	@Override
	public List<Book> listfindAllBook() throws Exception {
		return bookDao.findAllBook();
	}

	@Override
	public Book listfindById(String id) throws Exception {
		return bookDao.findById(id);
	}

	@Override
	public List<Book> listBooks(Integer offset, Integer maxResults)
			throws Exception {
		return bookDao.list(offset, maxResults);
	}

	@Override
	public int countBooks() throws Exception {
		return bookDao.count();
	}
	
}