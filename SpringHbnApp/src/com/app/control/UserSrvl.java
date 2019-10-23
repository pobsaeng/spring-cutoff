package com.app.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.app.model.Customer;
import com.app.service.CustomerService;
import com.app.service.impl.CustomerServiceImpl;

public class UserSrvl extends HttpServlet {
	private static final long serialVersionUID = 1005318069240423974L;

	private CustomerService customerService;

	public CustomerService getCustomerService() {
		return customerService;
	}

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		ApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
		customerService = (CustomerServiceImpl) context.getBean("customerService");
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
		System.out.println("UserSrvl Process..");

		if (request.getParameter("save") != null) {
			try {
				String hId = request.getParameter("hId");
				System.out.println("hId:"+hId);
				if (hId.equals("")) {
					System.out.println("Insert!!");
					String firstName = request.getParameter("cusFirstName");
					String lastName = request.getParameter("cusLastName");
					String age = request.getParameter("cusAge");

					if (firstName == null || lastName == null || age == null) {
						forwardPage(request, response);
						return;
					}
					System.out.println(firstName + ", " + lastName + ", " + age);
					
					Customer customer = new Customer();
					customer.setCusFirstName(firstName);
					customer.setCusLastName(lastName);
					customer.setCusAge(age != null ? Integer.parseInt(age) : 0);
					customerService.addCustomer(customer);

					forwardPage(request, response);
				}else{
					System.out.println("Update!!");
					Long id = Long.parseLong(request.getParameter("hId"));
					String firstName = request.getParameter("cusFirstName");
					String lastName = request.getParameter("cusLastName");
					String age = request.getParameter("cusAge");
					
					Customer customer = new Customer();
					customer.setCusId(id);
					customer.setCusFirstName(firstName);
					customer.setCusLastName(lastName);
					customer.setCusAge(age != null ? Integer.parseInt(age) : 0);
					customerService.updateCustomer(customer);
					
					forwardPage(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (request.getParameter("findAllCustomer") != null) {
			
			forwardPage(request, response);
			return;
			
		} else if (request.getParameter("retrieve") != null) {
			
			try {
				Customer customers = customerService.listCustomerfindById(Long.parseLong(request.getParameter("Id")));

				if (customers != null)
					request.setAttribute("customers", customers);

				forwardPage(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				forwardPage(request, response);
			}
			
		} else if (request.getParameter("delete") != null) {
			try {
				Customer customer = new Customer();
				customer.setCusId(Long.parseLong(request.getParameter("Id")));
				customerService.deleteCustomer(customer);
				forwardPage(request, response);
			} catch (Exception e) {
				forwardPage(request, response);
			}
		}
	}

	private void forwardPage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int currentPage = 1;
		int recordsPerPage = 5;
		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int noOfRecords = customerService.count();
		int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		request.setAttribute("noOfRecords", noOfRecords);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("currentPage", currentPage);

		List<Customer> listCus = customerService.list((currentPage - 1) * recordsPerPage, recordsPerPage);
		if (listCus != null) {
			request.setAttribute("customerList", listCus);
			RequestDispatcher rd = request.getRequestDispatcher("view/home.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("view/home.jsp");
		}

	}
}
