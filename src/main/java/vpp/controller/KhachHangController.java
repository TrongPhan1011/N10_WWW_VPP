package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("/list")
	public String getAllKhachHang(Model theModel) {
		List<KhachHang> khachHangs=khachHangService.getTatCaKhachHang();
		theModel.addAttribute("dsKhachHang", khachHangs);
		return "admin/admin-khach-hang";
		
	}
	
	@RequestMapping("/xoaKhachHang")
	public String xoaKhachHang(@RequestParam("khachHangId") int theId) {
		khachHangService.xoaKhachHang(theId);
		return "admin/admin-khach-hang";
		
	}
	
	@RequestMapping("/themHoacCapNhatKhachHang")
	public void themHoacCapNhatKhachHang(@ModelAttribute("khachHang") KhachHang khachHang) {
		khachHangService.themHoacCapNhatKhachHang(khachHang);
	}
	
	
}
