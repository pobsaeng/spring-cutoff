package com.boot.repositories;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.boot.model.Book;
//CrudRepository
import java.lang.String;

public interface BookRepository extends JpaRepository<Book, Long> {
	
	// Customize Query
	@Query(value = "SELECT * FROM book", nativeQuery = true)
	List<Book> findAllBook();

	@Query(value = "SELECT * FROM book where id=:?", nativeQuery = true)
	List<Book> findBookById(Integer id);

	@Query(value = "SELECT u FROM Book u")
	List<Book> findAllWithJPQL(Sort sort);

	@Query("SELECT u FROM Book u WHERE u.stock = :stock and u.price = :price")
	List<Book> findBookByIdAndPriceParams(@Param("stock") Integer stock, @Param("price") Integer price);

	@Query(value = "update Book u set u.title = ? where u.id = ?")
	int updateTitleById(String title, Integer id);

	
	// Generate by JPA from Java bean
	List<Book> findByTitle(String title);
	
	

}
