package vpp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import vpp.entity.KhachHang;
import vpp.service.KhachHangService;

@Controller
public class KhachHangController {
	
	@Autowired
	private KhachHangService khachHangService;
	
	@PostMapping("/saveKhachHang")
	public String saveKhachHang(@ModelAttribute("khachhang") KhachHang theKhachHang) {
		khachHangService.saveKhachHang(theKhachHang);
		return "/login";
		
	}

}
