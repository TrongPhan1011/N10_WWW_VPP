package vpp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/donhang")
public class AdminDonHangController {
	
	@GetMapping("/")
	public String showDonHangAdmin() {
		
		return "admin/admin-don-hang";
	}

}
