package vpp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerHomeController {
	@GetMapping("/")
    public String showHomePage() {
        return "index";
    }
	
	

}
