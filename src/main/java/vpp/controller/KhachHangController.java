package vpp.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.io.UnsupportedEncodingException;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import vpp.entity.KhachHang;
import vpp.service.KhachHangService;
import vpp.user.VPPUser;

@Controller
@RequestMapping("/admin/khachhang")
public class KhachHangController {
	
	@Autowired
	private KhachHangService khachHangService;
	@Autowired
	private UserDetailsManager userDetailsManager;
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	


	@RequestMapping("/")
	public String getAllKhachHang(Model theModel) {
		List<KhachHang> khachHangs=khachHangService.getTatCaKhachHang();
		KhachHang khachHang=new KhachHang();
		theModel.addAttribute("khachHang", khachHang);
//		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy ");
//		for(int i=0;i<khachHangs.size();i++) {
//		try {
//			Date newDate=(Date) formatter.parse(khachHangs.get(i).getNgaySinh().toString());
//			khachHangs.get(i).setNgaySinh(newDate);
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
//		}
		theModel.addAttribute("dsKhachHang", khachHangs);
		return "admin/admin-khach-hang";

	}

	@RequestMapping("/xoakhachhang")
	public String xoaKhachHang(@RequestParam("khachHangId") int theId) {
		khachHangService.xoaKhachHang(theId);
		return "redirect:/admin/khachhang/";

	}

	@GetMapping("/capNhatKhachHang")
	public String showFormForUpdate(@RequestParam("khachHangId") int theId, Model theModel) {
		KhachHang khachHang = khachHangService.getKhachHangTheoID(theId);	
		theModel.addAttribute("customer", khachHang);	
		
	    khachHangService.themHoacCapNhatKhachHang(khachHang);
		return "redirect:/khachhang/";    
	}

//	@RequestMapping("/themHoacCapNhatKhachHang")
//	public String themHoacCapNhatKhachHang(@ModelAttribute("khachHang") KhachHang khachHang) {


	@RequestMapping("/capnhatkhachhang")
	public String showFormForUpdate(@ModelAttribute("khachHang") KhachHang khachHang) {
		convertUTF8(khachHang);

		khachHangService.themHoacCapNhatKhachHang(khachHang);
		return "redirect:/admin/khachhang/";    
	}

	@RequestMapping("/themHoacCapNhatKhachHang")
	public String themHoacCapNhatKhachHang(@ModelAttribute("khachHang") KhachHang khachHang) {
		khachHangService.themHoacCapNhatKhachHang(khachHang);
		return "redirect:/khachhang/";
	}
	
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
	
	private KhachHang converUTF8(KhachHang khachHang) {
		// TODO Auto-generated method stub
		String ten = khachHang.getTenKH();
		String diaChi= khachHang.getDiaChi();
		try {
			String tenUTF8 = new String(ten.getBytes("ISO-8859-1"), "UTF8");
			String diaChiUTF8 = new String(diaChi.getBytes("ISO-8859-1"), "UTF8");
			khachHang.setTenKH(tenUTF8);
			khachHang.setDiaChi(diaChiUTF8);
		}catch (UnsupportedEncodingException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return khachHang;
	}


}

