package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import vpp.entity.CTGioHang;
import vpp.entity.GioHang;
import vpp.entity.KhachHang;
import vpp.entity.SanPham;
import vpp.service.CTGioHangService;
import vpp.service.GioHangService;
import vpp.service.KhachHangService;
import vpp.service.SanPhamService;

@Controller
@RequestMapping("/giohang")
public class GioHangController {
		//Service
	@Autowired
	private KhachHangService khachHangService;	
	private GioHangService gioHangService;
	private CTGioHangService ctGioHangService;
	private SanPhamService sanPhamService;
	
		//requestMapping
	@RequestMapping("/")
	public String chiTietGioHang(Model theModel, @ModelAttribute("emailUserLogin") String email) {
		KhachHang khachHang = khachHangService.getKhachHangTheoEmail(email);
		GioHang gioHang = gioHangService.getGioHangTheoKhachHang(khachHang.getId());
		CTGioHang ctGioHang = ctGioHangService.getCtGioHang(gioHang.getId());
		List<SanPham> sanPhams = sanPhamService.getSanPhamTheoGioHang(gioHang.getId());
		
		theModel.addAttribute("giohang", gioHang);
		theModel.addAttribute("ctgiohang", ctGioHang);
		theModel.addAttribute("dsSanPham", sanPhams);
		
		return "gio-hang";
	}
}
