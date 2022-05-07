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

	
	 @GetMapping("/login")
	    public String showLogin() {
	        return "login";
	    }
	 
	 @GetMapping("/access-denied")
	    public String showAccessDenied() {

	        return "access-denied";

	    }
	 
//	 @GetMapping("/admin")
//	 public String loadAdmin() {
//		 return "admin/admin";
//	 }
	 

	 
}
