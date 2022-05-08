package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vpp.entity.SanPham;
import vpp.service.SanPhamService;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {
	
	@Autowired
	private SanPhamService sanPhamService;
	
	@RequestMapping("/")
	public String getTatCaSanPham(Model theModel) {
		List<SanPham> sanPhams=sanPhamService.getTatCaSanPham();
		theModel.addAttribute("dsSanPham", sanPhams);
		return "sanpham";
	}
}
