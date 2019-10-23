package com.app.service;
import java.util.List;

import com.app.model.Book;

public interface BookService {
	public void addBook(Book book) throws Exception;
	public void updateBook(Book book) throws Exception;
	public void deleteBook(Book book) throws Exception;
	public List<Book> listfindAllBook() throws Exception;	
	public Book listfindById(String id) throws Exception;
	public List<Book> listBooks(Integer offset, Integer maxResults) throws Exception;
	public int getTotalBooks() throws Exception;
	public List<Book> getBookInterval(int start, int limit) throws Exception;
}
