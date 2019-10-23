package com.app.client;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.app.model.Book;
import com.app.service.impl.BookServiceImpl;
public class TestBook {

	private static ApplicationContext context;
	public static void main(String[] args) throws Exception {
		context = new ClassPathXmlApplicationContext(new String[] {"applicationContext-main.xml"});
		
		BookServiceImpl bookSrv = (BookServiceImpl) context.getBean("bookService");
//		List<Book> listBook = bookSrv.listfindAllBook();
//		for (Book book2 : listBook) {
//			System.out.println(book2.getTitle());
//		}
		System.out.println(bookSrv.getTotalBooks());
		
		List<Book> b = bookSrv.listBooks(0, 10);
		for (Book book : b) {
			System.out.println(book.getTitle());
		}
	}

}
