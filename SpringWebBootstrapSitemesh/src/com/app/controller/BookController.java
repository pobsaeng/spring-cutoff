package com.app.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.Book;
import com.app.service.BookService;
import com.app.util.Utility;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String createFormBean() throws Exception {
		return "home";
	}
	
	@RequestMapping(value = "/bookController/bookList", method = RequestMethod.GET)
	public String getBook(ModelMap model, @RequestParam(value = "currentPage", required = false) final String currentPage) throws Exception {
		System.out.println("currentPage = " + currentPage);
		try {
			int currPage = 1;
			int recordsPerPage = 8;

			if (!currentPage.equalsIgnoreCase("") && currentPage != null) {
				currPage = Integer.parseInt(currentPage);
			}

			int noOfRecords = bookService.getTotalBooks();
			int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);

			List<Book> listBook = bookService.getBookInterval((currPage - 1) * recordsPerPage, recordsPerPage);
			model.addAttribute("listBook", listBook);
			model.addAttribute("noOfRecords", noOfRecords);
			model.addAttribute("noOfPages", noOfPages);
			model.addAttribute("currentPage", currPage);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/book/book_List";
	}

	@RequestMapping(value = "/bookController/bookDetail", method = RequestMethod.GET)
	public String bookDetail(ModelMap model, @RequestParam(value = "isbn", required = false) String isbn) {
		try {
			Book book = bookService.listfindById(isbn);
			model.addAttribute("Book", book);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/book/book_Detail";
	}

	@RequestMapping(value = "/bookController/bookForm", method = RequestMethod.GET)
	public ModelAndView addBook(@ModelAttribute("command") Book book, ModelMap model, @RequestParam(value = "currentPage", required = false) final String currentPage) throws IOException {
		try {
			int curPage = 1;
			int recordsPerPage = 8;

			if (currentPage != null && currentPage.length() > 0) {
				System.out.println("currentPage : " + currentPage);
				curPage = Integer.parseInt(currentPage);
			}

			int noOfRecords = bookService.getTotalBooks();
			int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);

			List<Book> listBook = bookService.getBookInterval((curPage - 1) * recordsPerPage, recordsPerPage);
			model.addAttribute("listBook", listBook);
			model.addAttribute("noOfRecords", noOfRecords);
			model.addAttribute("noOfPages", noOfPages);
			model.addAttribute("currentPage", curPage);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ModelAndView("/book/book_Form", model);
	}

	@RequestMapping(value = "/bookController/bookSave", method = RequestMethod.POST)
	public ModelAndView saveBook(
			@ModelAttribute("command") Book book,
			@RequestParam("file") MultipartFile file,
			@RequestParam(value = "currentPage", required = false) final String currentPage) {
		
		System.out.println("-----save book----");
		try {
			Book b = convertBook(book);
			bookService.addBook(b);

		} catch (Exception e) {
			e.printStackTrace();
		}

		String fileName = null;
		if (!file.isEmpty()) {
			try {
				fileName = file.getOriginalFilename();
				byte[] bytes = file.getBytes();
				BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File("C:/temp/" + fileName)));

				buffStream.write(bytes);
				buffStream.close();

			} catch (Exception e) {
				// return "/bookController/book_add";
			}
		} else {
			// return "Unable to upload. File is empty.";
		}

		return new ModelAndView("redirect:/bookController/bookForm");
	}

	private Book convertBook(Book b) {
		Book book = new Book();
		book.setIsbn(Utility.getISBNKeyCode());
		book.setTitle(b.getTitle());
		book.setAuthor(b.getAuthor());
		book.setPublisher(b.getPublisher());
		book.setYearPublisher(b.getYearPublisher());
		book.setPage(b.getPage());
		book.setPrice(b.getPrice());
		book.setWeight(b.getWeight());
		book.setStock(b.getStock());
		book.setImg(Utility.getImgKeyCode());
		book.setCreateUpdate(new Date());
		book.setCreateDate(new Date());
		return book;
	}
}
