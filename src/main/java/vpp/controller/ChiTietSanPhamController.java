package vpp.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vpp.entity.SanPham;
import vpp.service.SanPhamService;

@Controller
@RequestMapping("/chitietsanpham")
public class ChiTietSanPhamController {
	
	@Autowired
	private SanPhamService sanPhamService;
	
	@RequestMapping("/")
	public String getChiTietSanPham(Model theModel,@RequestParam("idSP") int id) {
		SanPham sanPham=sanPhamService.getSanPhamTheoID(id);
		theModel.addAttribute("tempKhachHang", sanPham);
		return "chi-tiet-san-pham";
	}
	
}
