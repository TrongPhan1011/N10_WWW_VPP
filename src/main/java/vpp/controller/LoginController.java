package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class LoginController {
//	@Autowired
//	 private CustomerService customerService;

	@GetMapping("/")
	    public String showHomePage() {
	        return "index";
	    }
	 @GetMapping("/login")
	    public String showLogin() {
	        return "login";
	    }
	 
	 @GetMapping("/access-denied")
	    public String showAccessDenied() {

	        return "access-denied";

	    }
	 
//	 @GetMapping("/")
//		public String listCustomer(Model model) {
//		 	
//			List<Customer> ls = customerService.getAllCustomer();
//			model.addAttribute("Customers",ls);
//			return "list-customers";
//		}
	 
}
