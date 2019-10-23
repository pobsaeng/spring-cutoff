package com.boot.controller;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.boot.injection.DbInjection;
import com.boot.injection.ErrorInjection;
import com.boot.injection.MsgInjection;
import com.boot.model.Book;
import com.boot.model.Contacts;
import com.boot.repositories.BookRepository;
import com.boot.request.SubmitBook;
import com.boot.response.Customer;
import com.boot.service.EntityManagerService;
import com.fasterxml.jackson.annotation.JsonProperty;

@RestController
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);

	@Autowired
	private BookRepository bookRepository;

	@Autowired
	private DataSource dataSource;

	@Autowired
	private EntityManagerService entityManagerService;

	@Autowired
	private ErrorInjection errorInj;

	public ErrorInjection getErrorInj() {
		return this.errorInj;
	}

	@Autowired
	private DbInjection dbInj;

	public DbInjection getDbInj() {
		return this.dbInj;
	}

	@Autowired
	private MsgInjection msgInj;

	public MsgInjection getMsgInj() {
		return this.msgInj;
	}

	@GetMapping("/")
	public String hello() throws Exception {
		//http://localhost:8087/findall
		
		String REST_SERVICE_URI = "http://localhost:8087/";
		 RestTemplate restTemplate = new RestTemplate();
		 
        List<Contacts> contactsList = restTemplate.getForObject(REST_SERVICE_URI+"/findall", List.class);
        if(contactsList.size() > 0){
        	System.out.println(contactsList);
        }
        
        
//		 ResponseEntity<String> listContacts = restTemplate.getForEntity(REST_SERVICE_URI + "/findall", String.class);
//		 System.out.println(listContacts.getBody());
//		 System.out.println("----------------------------------------------------------");


		String production = getDbInj().getMessage() + " [ URL: " + getDbInj().getDatasource() + ", Username: "
				+ getDbInj().getUsername() + ", Password: " + getDbInj().getPassword() + ", Database: "
				+ dataSource.getConnection().getCatalog() + "]";
		System.out.println(production);
		return production;
	}

	@GetMapping("/inject/message")
	public String getJsonText() {
		logger.info("message!!!!!");
		String message = getErrorInj().getMsgError() + "," + getErrorInj().getMsgTable() + ","
				+ getErrorInj().getMsgTitle();
		return message;
	}

	@GetMapping("/find/all/withJPQL")
	public List<Book> getAllBookWithJPQL() {
		List<Book> books = bookRepository.findAllWithJPQL(new Sort(Sort.Direction.DESC, "id"));
		return books;
	}

	@GetMapping("/find/book/{stock}/{price}")
	public List<Book> getBookByIdAndPriceParams(@PathVariable("stock") Integer stock,
			@PathVariable("price") Integer price) {
		List<Book> books = bookRepository.findBookByIdAndPriceParams(stock, price);
		return books;
	}

	// findAll
//	@GetMapping("/find/findBookById/{number}")
//	public List<Book> getfindAll() {
//		List<Book> books1 = bookRepository.findAll(new Sort(Sort.Direction.ASC, "name"));
//		
//		return books1;
//	}

	// findBookById
	@GetMapping("/find/findBookById/{number}")
	public List<Book> getBookById(@PathVariable("number") Integer number) {
		List<Book> books = bookRepository.findBookById(number);
		return books;
	}

	// updateTitleById
	@GetMapping("/find/updateTitleById/{title}")
	public void getupdateBookForNameNative(@PathVariable("id") Integer id, @PathVariable("title") String title) {
		System.out.println(id + ", " + title);
		int a = bookRepository.updateTitleById(title, id);
	}

	@PostMapping(value = "/user/")
	public ResponseEntity<?> getBook(@RequestBody SubmitBook submitBook) {
		Book book = new Book();

		return new ResponseEntity<Book>(book, HttpStatus.OK);
	}

}
