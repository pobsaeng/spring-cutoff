package com.app.control;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.app.model.Book;
import com.app.service.BookService;
import com.app.service.impl.BookServiceImpl;
import com.app.util.Item;
import com.app.util.ShoppingCart;
import com.app.util.Utility;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadException;
import javazoom.upload.UploadFile;

public class BookSrvl extends HttpServlet {
	private static final long serialVersionUID = 1005318069240423974L;

	private BookService bookService;	
	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		ApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(config.getServletContext());
		bookService = (BookServiceImpl) context.getBean("bookService");
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("BookSrvl Process..");
		try {
			if (request.getParameter("showAllBook") != null) {
				forwardAllProduct(request, response);
				
			}else if(request.getParameter("showBookDetail") != null) {
				String isbn = request.getParameter("isbn");
				if(isbn != null){
					request.setAttribute("book", bookService.listfindById(isbn));
				}
				
				RequestDispatcher rd = request.getRequestDispatcher("view/book_detail.jsp"); 
			    rd.forward(request, response); 
			    
			}else if(request.getParameter("addToCart") != null) {
				 	String amount = request.getParameter("amount");
			        //  Validate Input
			        String error = "";
			        
			        if (!Utility.isNumber(amount)) {
			            error = "No number!!";
			        }
			        else if (Integer.parseInt(amount) <= 0) {
			            error = "Not fond number";
			        }
			        
			        if (error.length() > 0) {
						request.setAttribute("invalidAmount", error);
						RequestDispatcher rd = request.getRequestDispatcher("view/book_detail.jsp"); 
					    rd.forward(request, response); 
			            return;
			        }
			        
			        String isbn = request.getParameter("isbn");
				   				     
			        HttpSession session = request.getSession();
			        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
			        
			        if (cart == null) {
			            cart = new ShoppingCart();
			            session.setAttribute("cart", cart);//keep to session
			        }
			        
			        //add to cart
			        Book book = bookService.listfindById(isbn);
			        if(book != null){
			        	 Item item = new Item();
					        item.setId(book.getIsbn());
					        item.setAmount(Integer.parseInt(amount));
					        item.setTitle(book.getTitle());
					        item.setPrice(book.getPrice());
					        item.setStock(book.getStock());
					        cart.add(item);
			        }
			        
			        //show cart 
			        showCard(request, response);
			        
			}else if(request.getParameter("showcart") != null) {
				showCard(request, response);
			}else if(request.getParameter("updateCart") != null){

		        //  Prepare Input
		        String[] removes = request.getParameterValues("remove");
		        String[] amounts = request.getParameterValues("amount");
		        String[] isbns = request.getParameterValues("isbn");
		        
		        if (removes == null) {
		            removes = new String[0];
		        }
		        
		        //  Validate Input
		        Map<String, String> errors = new HashMap<String, String>();
		        
		        for (int i = 0; i < isbns.length; i++) {
		            if (!Utility.isNumber(amounts[i])) {
		                errors.put(isbns[i], "Amount must be only number!!");
		            }
		            else if (Integer.parseInt(amounts[i]) <= 0) {
		                errors.put(isbns[i], "Amount must be only zero!!");
		            }
		        }
		        
		        if (errors.size() > 0) {
		            request.setAttribute("errors", errors);

		            RequestDispatcher rd = request.getRequestDispatcher("view/shopping_cart.jsp");

		            rd.forward(request, response);

		            return;
		        }
		        
		        //  Call Model
		        HttpSession  session = request.getSession();
		        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
		        
		            //  Update
		        for (int i = 0; i < isbns.length; i++) {
		        	String isbn = isbns[i];
		            int amount = Integer.parseInt(amounts[i]);
		            
		            cart.update(isbn, amount);
		        }
		        
		            //  Remove
		        for (int i = 0; i < removes.length; i++) {
		            String id = removes[i];
		            
		            cart.remove(id);
		        }
		        
		        //  Go to View
		        response.sendRedirect("BookSrvl?showcart");
		    
			}else if(request.getParameter("shipping") != null){
				 HttpSession session = request.getSession();
			     if (session.getAttribute("member") == null) {
			    	 RequestDispatcher rd = request.getRequestDispatcher("view/login.jsp");
			    	 rd.forward(request, response);
			     }else {
			    	 RequestDispatcher rd = request.getRequestDispatcher("view/shipping.jsp");
			    	 rd.forward(request, response);
			     }
			}else if(request.getParameter("addBook") != null){
			      try {
			        //  Prepare Input
			        MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
			        String title = Utility.convertThai(mrequest.getParameter("title"));
			        String authors = Utility.convertThai(mrequest.getParameter("authors"));
			        BigDecimal price = new BigDecimal(mrequest.getParameter("price"));
			        int stock = Integer.parseInt(mrequest.getParameter("stock"));
			        UploadFile pic = (UploadFile) mrequest.getFiles().get("picture");
			        System.out.println(pic.getFileName());
			        //  Validate Input
			        String error = "";
			        
			        if (pic.getFileSize() == -1) {
			            error = "file less than 0";
			        }
			        else if (pic.getFileSize() > 50*1024) {
			            error = "size over 50 ";
			        }
			        else if (!pic.getContentType().equals("image/gif")) {
			            error = "Picture not gif";
			        }
			        
			        if (error.length() > 0) {
			        	System.out.println(error);
			            Book book = new Book();
			            book.setTitle(title);
			            book.setAuthor(authors);
			            book.setPrice(price);
			            book.setStock(stock);
			            
			            request.setAttribute("invalidPicture", error);
			            request.setAttribute("book", book);
			            
			            RequestDispatcher rd = request.getRequestDispatcher("view/add_book1.jsp");
			            rd.forward(request, response);
			            return;
			        }
			        
			        //  Call Model
			        Book  book = new Book();
		            book.setTitle(title);
		            book.setAuthor(authors);
		            book.setPrice(price);
		            book.setStock(stock);
		            bookService.addBook(book);
			        //  File
			        UploadBean upBean = new UploadBean();

			        pic.setFileName(book.getIsbn() + ".gif");
			        upBean.setFolderstore(getServletContext().getRealPath("/images"));
			        upBean.store(mrequest);
			        
			        //  Go to View
			        response.sendRedirect("BookSrvl?showAllBook");
			      }catch (UploadException ex) {
			        throw new RuntimeException(ex.getMessage());
			      }
			}else if(request.getParameter("bookForm") != null){
				 RequestDispatcher rd = request.getRequestDispatcher("view/add_book1.jsp");
		         rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	private void forwardAllProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int currentPage = 1;
		int recordsPerPage = 12;
		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int noOfRecords = bookService.countBooks();
		int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		request.setAttribute("noOfRecords", noOfRecords);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("currentPage", currentPage);

		List<Book> listCus = bookService.listBooks((currentPage - 1) * recordsPerPage, recordsPerPage);
		if (listCus != null) {
			request.setAttribute("listBook", listCus);
			RequestDispatcher rd = request.getRequestDispatcher("view/search_book.jsp");
			rd.forward(request, response);
		}

	}
	private void showCard(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession  session = request.getSession();
		ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
		
		if (cart != null && cart.getItems().size() > 0) {
			RequestDispatcher rd = request.getRequestDispatcher("view/shopping_cart.jsp");
			rd.forward(request, response);
		}else {
			response.sendRedirect("BookSrvl?showAllBook");
		}
    }
}
