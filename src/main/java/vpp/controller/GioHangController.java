package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
	@Autowired
	private GioHangService gioHangService;
	@Autowired
	private CTGioHangService ctGioHangService;
	@Autowired
	private SanPhamService sanPhamService;
	
		//requestMapping
	@RequestMapping("/")
	public String chiTietGioHang(Model theModel) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		KhachHang khachHang = khachHangService.getKhachHangTheoEmail(email);
		GioHang gioHang = gioHangService.getGioHangTheoKhachHang(khachHang.getId());
		List<CTGioHang> ctGioHang = ctGioHangService.getCtGioHang(gioHang.getId());
		List<SanPham> sanPhams = sanPhamService.getSanPhamTheoGioHang(gioHang.getId());
		int soLuong = ctGioHangService.soLuongSanPham(gioHang.getId());
		theModel.addAttribute("khachhang", khachHang);
		theModel.addAttribute("soluongcuagio", soLuong);
		theModel.addAttribute("giohang", gioHang);
		theModel.addAttribute("dsCtGioHang", ctGioHang);
		theModel.addAttribute("dsSanPham", sanPhams);
		
		return "gio-hang";
	}
}
