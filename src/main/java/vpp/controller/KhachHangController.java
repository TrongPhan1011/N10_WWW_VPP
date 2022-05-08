package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import vpp.entity.KhachHang;
import vpp.service.KhachHangService;

@Controller
@RequestMapping("/khachhang")
public class KhachHangController {

	@Autowired
	private KhachHangService khachHangService;

	@RequestMapping("/")
	public String getAllKhachHang(Model theModel) {
		List<KhachHang> khachHangs=khachHangService.getTatCaKhachHang();
		KhachHang khachHang=new KhachHang();
		theModel.addAttribute("khachHang", khachHang);
		theModel.addAttribute("dsKhachHang", khachHangs);
		return "admin/admin-khach-hang";

	}

	@RequestMapping("/xoaKhachHang")
	public String xoaKhachHang(@RequestParam("khachHangId") int theId) {
		khachHangService.xoaKhachHang(theId);
		return "admin/admin-khach-hang";

	}

	@GetMapping("/capNhatKhachHang")
	public String showFormForUpdate(@RequestParam("khachHangId") int theId, Model theModel) {
		KhachHang khachHang = khachHangService.getKhachHangTheoID(theId);	
		theModel.addAttribute("customer", khachHang);		
		return "redirect:/khachhang/";    
	}

	@RequestMapping("/themHoacCapNhatKhachHang")
	public String themHoacCapNhatKhachHang(@ModelAttribute("khachHang") KhachHang khachHang) {
		khachHangService.themHoacCapNhatKhachHang(khachHang);
		return "redirect:/khachhang/";
	}


}
