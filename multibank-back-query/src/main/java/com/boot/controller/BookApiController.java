package com.boot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.boot.model.Book;
import com.boot.repositories.BookRepository;
import com.boot.request.SubmitBook;

@RestController
public class BookApiController {
	
	@Autowired
	private BookRepository bookRepository;
	
	@GetMapping(value="/findAllBook")
    public List<Book> findAllBook(){
        return bookRepository.findAll();
    }

    @GetMapping(value="/findBookById/{id}")
    public List<Book> getBookById(@PathVariable Integer id){
        return bookRepository.findBookById(id);
    }

    @PostMapping(value="/save")
    public String save(@RequestBody SubmitBook submitBook){
    	System.out.println(submitBook);
    	
    	Book book = new Book();
    	book.setId(submitBook.getId());
    	book.setTitle(submitBook.getTitle());
    	book.setAuthors(submitBook.getAuthors());
    	book.setPrice(submitBook.getPrice());
    	book.setStock(submitBook.getStock());
    	
    	bookRepository.save(book);
    	
        return "Rows Affected!";
    }

}
