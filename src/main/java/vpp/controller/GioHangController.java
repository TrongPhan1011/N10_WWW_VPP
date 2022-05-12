package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vpp.entity.CTGioHang;
import vpp.entity.GioHang;
import vpp.entity.KhachHang;
import vpp.entity.NhanVien;
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
	
	
	@GetMapping("/")
	public String chiTietGioHang(Model theModel) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		if(email.equals("anonymousUser"))
			return "redirect:/login";
		else {
			
			KhachHang khachHang = khachHangService.getKhachHangTheoEmail(email);
			int soLuong =0;
			GioHang gioHang = gioHangService.getGioHangTheoKhachHang(khachHang.getId());
			
			soLuong = ctGioHangService.soLuongSanPham(gioHang.getId());
			if(soLuong == 0) {
				theModel.addAttribute("soluongcuagio", soLuong);
				return "gio-hang";
			}
			else {
				List<CTGioHang> ctGioHang = ctGioHangService.getCtGioHang(gioHang.getId());
				List<SanPham> sanPhams = sanPhamService.getSanPhamTheoGioHang(gioHang.getId());

				theModel.addAttribute("khachhang", khachHang);
				theModel.addAttribute("soluongcuagio", soLuong);
				theModel.addAttribute("giohang", gioHang);
				theModel.addAttribute("dsCtGioHang", ctGioHang);
				theModel.addAttribute("dsSanPham", sanPhams);
				
				return "gio-hang";
			
			}
			}
	}
	
	@RequestMapping(value="/addCart",method = RequestMethod.POST)
	public String addCart(@RequestParam("idSP")int id, Model model, @ModelAttribute("ChiTiet") CTGioHang ctGH) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		if(email.equals("anonymousUser"))
			return "redirect:/login";
		else {
			
			KhachHang khachHang = khachHangService.getKhachHangTheoEmail(email);
			GioHang gioHang = gioHangService.getGioHangTheoKhachHang(khachHang.getId());
			
			SanPham sp = sanPhamService.getSanPhamTheoID(id);
			System.out.println(sp);
				List<CTGioHang> ctGioHang = ctGioHangService.getCtGioHang(gioHang.getId());
		for(CTGioHang ct : ctGioHang) {
			if(ct.getSp().getId() == sp.getId()) {
				int soLuong=0;
				soLuong = ctGH.getSoLuong() + ct.getSoLuong();
				ctGH.setSoLuong(soLuong); 
			}
		}
     	CTGioHang ctGioHangMoi = new CTGioHang(gioHang, sp, ctGH.getSoLuong());
		ctGioHangService.addCart(ctGioHangMoi);
		return "redirect:/giohang/";
	}}
	
	@RequestMapping(value="/deleteCart",method = RequestMethod.POST)
	public String deleteCustomer(@RequestParam("idSP")int id) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		if(email.equals("anonymousUser"))
			return "redirect:/login";
		else {
			
			KhachHang khachHang = khachHangService.getKhachHangTheoEmail(email);
			GioHang gioHang = gioHangService.getGioHangTheoKhachHang(khachHang.getId());
		SanPham sp = sanPhamService.getSanPhamTheoID(id);
		System.out.println(id);
		
		CTGioHang ct = new CTGioHang(gioHang, sp, 0);
		ctGioHangService.deleteCart(ct);
		
		return "redirect:/giohang/";
	}
	
	
	
	
}}
