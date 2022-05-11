package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vpp.entity.NSX;
import vpp.entity.SanPham;
import vpp.service.NSXService;
import vpp.service.SanPhamService;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {
	
	@Autowired
	private SanPhamService sanPhamService;
	@Autowired
	private NSXService nsxService;
	
	@RequestMapping("/")
	public String getTatCaSanPham(Model theModel) {
		List<SanPham> sanPhams=sanPhamService.getTatCaSanPham();
		List<NSX> listNSX=nsxService.getTatCaNSX();
		theModel.addAttribute("dsSanPham", sanPhams);
		theModel.addAttribute("dsNSX", listNSX);
		return "sanpham";
	}
	
	@RequestMapping("/loaisanpham")
	public String getSanPhamTheoLoai(@RequestParam("tenLoai") int id, Model theModel) {
		//List<SanPham> sanPhams=sanPhamService.getSPTheoLoai(tenLoai);
		List<SanPham> sanPhams=sanPhamService.getSPTheoLoaiID(id);
		List<NSX> listNSX=nsxService.getTatCaNSX();
		theModel.addAttribute("dsNSX", listNSX);
		theModel.addAttribute("dsSanPham", sanPhams);
		return "sanpham";
	}
	
	@RequestMapping("/nhasansuat")
	public String getSanPhamTheoNSX(@RequestParam("tenNSX") String tenNSX, Model theModel) {
		List<SanPham> sanPhams=sanPhamService.getSPTheoNSX(tenNSX);
		List<NSX> listNSX=nsxService.getTatCaNSX();
		theModel.addAttribute("dsNSX", listNSX);
		theModel.addAttribute("dsSanPham", sanPhams);
		return "sanpham";
	}
	
	@RequestMapping("/sapxeptheoten")
	public String getSapXepTheoTen(Model theModel) {
		List<SanPham> sanPhams=sanPhamService.getSPTheoTenTangDan();
		List<NSX> listNSX=nsxService.getTatCaNSX();
		theModel.addAttribute("dsNSX", listNSX);
		theModel.addAttribute("dsSanPham", sanPhams);
		return "sanpham";
	}
	
	@RequestMapping("/sapxeptheogiatangdan")
	public String getSapXepTheoGiaTangDan(Model theModel) {
		List<SanPham> sanPhams=sanPhamService.getSPTheoGiaTangDan();
		List<NSX> listNSX=nsxService.getTatCaNSX();
		theModel.addAttribute("dsNSX", listNSX);
		theModel.addAttribute("dsSanPham", sanPhams);
		return "sanpham";
	}
	
	@RequestMapping("/sapxeptheogiagiamdan")
	public String getSapXepTheoGiaGiamDan(Model theModel) {
		List<SanPham> sanPhams=sanPhamService.getSPTheoGiaGiamDan();
		List<NSX> listNSX=nsxService.getTatCaNSX();
		theModel.addAttribute("dsNSX", listNSX);
		theModel.addAttribute("dsSanPham", sanPhams);
		return "sanpham";
	}
	
	
}
