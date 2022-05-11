package vpp.controller;

 import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import vpp.entity.NhanVien;
import vpp.service.NhanVienService;

 @Controller
 @RequestMapping("/admin/chiTietTaiKhoan")
 public class AdminTaiKhoanNVController {
 
 	@Autowired
 	private NhanVienService nhanVienService;

 	@GetMapping("/")
 	public String getThongTinNV(Model model) {
 		String gioiString=null;
 		
 		NhanVien nhanVien = nhanVienService.getNVEmail("Letuantai15f@gmail.com");
 		if(nhanVien.getGioiTinh().equals("Nữ")) {
 			gioiString="1";
 		}
 		
 		NhanVien thongtinNV = new NhanVien(nhanVien.getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
 				nhanVien.getSdt(), gioiString, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, nhanVien.getChucVu(), null,
 				"Đang làm việc");
 		System.out.println(thongtinNV);
 		model.addAttribute("thongtinNV", thongtinNV);
 		return "admin/admin-taikhoan";
 	}

 	@PostMapping("/update")

 	public String update(@Valid @ModelAttribute("thongtinNV") NhanVien nhanVien, Model model) {
 		String gioitinh = null;
 		String chucvu = null;
 		
 		if (nhanVien.getGioiTinh().toString().equals("0")) {
 			gioitinh = "Nam";
 		} else if (nhanVien.getGioiTinh().toString().equals("1")) {

 			gioitinh = "Nữ";
 		}
 		if (nhanVien.getChucVu().equalsIgnoreCase("Nhân viên")) {
 			chucvu = "Nhân viên";

 		} else {
 			chucvu = "Quản lý";
 		}

 		NhanVien thongtinNV = new NhanVien(nhanVien.getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
 				nhanVien.getSdt(), gioitinh, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, chucvu, null,
 				"Đang làm việc");

 		nhanVienService.updateNV(thongtinNV, thongtinNV.getId(), thongtinNV.getEmail());

 		return "redirect:/admin/chiTietTaiKhoan/";
 	}

 }