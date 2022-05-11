package vpp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vpp.entity.SanPham;
import vpp.service.SanPhamService;

@Controller
@RequestMapping("/timkiem")
public class TimKiemController {
	
	@Autowired
	private SanPhamService sanPhamService;
	
	@RequestMapping("/")
	public String timKiemSanPham(Model theModel, @RequestParam("tenSP") String tenSP) {

		List<SanPham> sanPhams = sanPhamService.getSanPhamTimKiem(tenSP);
		theModel.addAttribute("dsSanPham", sanPhams);
		return "timkiem";
	}
	
}
