package vpp.controller;

import java.io.UnsupportedEncodingException;
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
@RequestMapping("admin/khachhang")
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

	@RequestMapping("/xoakhachhang")
	public String xoaKhachHang(@RequestParam("khachHangId") int theId) {
		khachHangService.xoaKhachHang(theId);
		return "redirect:admin/khachhang/";

	}

	@RequestMapping("/capnhatkhachhang")
	public String showFormForUpdate(@ModelAttribute("khachHang") KhachHang khachHang) {
		convertUTF8(khachHang);
		khachHangService.themHoacCapNhatKhachHang(khachHang);
		return "redirect:admin/khachhang/";    
	}

//	@RequestMapping("/themHoacCapNhatKhachHang")
//	public String themHoacCapNhatKhachHang(@ModelAttribute("khachHang") KhachHang khachHang) {
//		khachHangService.themHoacCapNhatKhachHang(khachHang);
//		return "redirect:/khachhang/";
//	}
	
	public KhachHang convertUTF8(KhachHang kh) {
		String ten = kh.getTenKH();
		String diaChi = kh.getDiaChi();
		try {
			String tenUTF8 = new String(ten.getBytes("ISO-8859-1"), "UTF-8");
			String diaChiUTF8 = new String(diaChi.getBytes("ISO-8859-1"), "UTF-8");
			kh.setTenKH(tenUTF8);
			kh.setDiaChi(diaChiUTF8);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return kh;
	}


}
