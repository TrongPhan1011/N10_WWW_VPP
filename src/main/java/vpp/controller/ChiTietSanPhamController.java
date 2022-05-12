package vpp.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vpp.entity.GioHang;
import vpp.entity.KhachHang;
import vpp.entity.SanPham;
import vpp.service.CTGioHangService;
import vpp.service.GioHangService;
import vpp.service.KhachHangService;
import vpp.service.SanPhamService;

@Controller
@RequestMapping("/chitietsanpham")
public class ChiTietSanPhamController {
	
	@Autowired
	private SanPhamService sanPhamService;
	@Autowired
	private KhachHangService khachHangService;
	@Autowired
	private GioHangService gioHangService;
	@Autowired
	private CTGioHangService ctGioHangService;
	
	
	@RequestMapping("/")
	public String getChiTietSanPham(Model theModel,@RequestParam("idSP") int id) {
		//Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		//String email = authentication.getName();
		//KhachHang khachHang = khachHangService.getKhachHangTheoEmail(email);
		//int soLuong =0;
		//GioHang gioHang = gioHangService.getGioHangTheoKhachHang(khachHang.getId());
		
		//soLuong = ctGioHangService.soLuongSanPham(gioHang.getId());
		
		SanPham sanPham=sanPhamService.getSanPhamTheoID(id);
		theModel.addAttribute("tempKhachHang", sanPham);
		//theModel.addAttribute("gioHang", gioHang);
		return "chi-tiet-san-pham";
	}
	
}
