package com.boot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.model.Book;
import com.boot.repositories.BookRepository;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public Book find(Long id) {   	
        return bookRepository.findOne(id);
    }
    
    public List<Book> getBookById(Integer id) {
        return bookRepository.findBookById(id);
    }
    //save
    public void saveBook(Book book) {
    	bookRepository.save(book);
    }
    //delete
    public boolean deleteBook(Long id){
    	Book book = bookRepository.findOne(id);
        if(book == null) return false;
        
        bookRepository.delete(id);
        return true;
    }
}
