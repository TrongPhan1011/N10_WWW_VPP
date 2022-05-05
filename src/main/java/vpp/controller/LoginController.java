package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import tp.entity.Customer;
import tp.service.CustomerService;

@Controller
public class LoginController {
	@Autowired
	 private CustomerService customerService;

	@GetMapping("/home")
	    public String showHomePage() {
	        return "home";
	    }
	 @GetMapping("/login")
	    public String showLogin() {
	        return "myForm";
	    }
	 
	 @GetMapping("/access-denied")
	    public String showAccessDenied() {

	        return "access-denied";

	    }
	 
	 @GetMapping("/")
		public String listCustomer(Model model) {
		 	
			List<Customer> ls = customerService.getAllCustomer();
			model.addAttribute("Customers",ls);
			return "list-customers";
		}
	 
}
