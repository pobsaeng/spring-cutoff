package com.boot.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.boot.model.Book;

@Service
public class EntityManagerService {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public List<Book> getBookByIdNameQuery(Integer id) {
		
		List<Book> books = entityManager.createNamedQuery("findByIdwithNQ").setParameter("id", id).getResultList();
		return books;
	}
	
	public List<Book> getBookModel() {
		
		String qry = "SELECT * from book";
		Query query = entityManager.createNativeQuery(qry, Book.class);

		List<Book> daoDtolist = query.getResultList();
		
		return daoDtolist;
	}
}
