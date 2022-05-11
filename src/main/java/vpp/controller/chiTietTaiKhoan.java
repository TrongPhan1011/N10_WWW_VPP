package vpp.controller;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vpp.entity.KhachHang;
import vpp.entity.NhanVien;
import vpp.service.KhachHangService;
import vpp.service.NhanVienService;

@Controller
@RequestMapping("/admin/chiTietTaiKhoan")
public class chiTietTaiKhoan {
	@Autowired
	private UserDetailsManager userDetailsManager;
	@Autowired
	private NhanVienService nhanVienService;
	
	@Autowired
	private KhachHangService khachHangService;
	
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@GetMapping("/")
	public String getThongTinNV(Model model) {
		String gioiString=null;

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		NhanVien nhanVien = nhanVienService.getNVEmail(authentication.getName());
		
//		 System.out.println(authentication.getName());
		
//		 System.out.println(nhanVien);
//				if(nhanVien != null){
//			
//						if(nhanVien.getGioiTinh().equals("Nữ")) {
//								gioiString="1";
//							}
////		NhanVien nhanViens = nhanVienService.getNVId(1);
//					NhanVien thongtinNV = new NhanVien(nhanVien.getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
//							nhanVien.getSdt(), gioiString, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, nhanVien.getChucVu(), null,
//							"Đang làm việc");
//					model.addAttribute("thongtinNV", thongtinNV);
//					 a = "admin/admin-taikhoan";
//				}
				 
			KhachHang kh = khachHangService.getKHEmail(authentication.getName());
			KhachHang thongtinKH = new KhachHang(kh.getTenKH(), kh.getEmail(), kh.getSdt(), kh.getGioiTinh(), kh.getNgaySinh(), kh.getDiaChi(), kh.getTrangThai(), null);	
			model.addAttribute("thongtinNV", thongtinKH);
			

		return "taikhoan_customer";
	}
	
//	@GetMapping("/kh")
//	public String getThongTinKH(Model model) {
//		String gioiString=null;
//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//
//		KhachHang khachHang =khachHangService.getKHEmail(authentication.getName());
//		
////		NhanVien nhanViens = nhanVienService.getNVId(1);
////		NhanVien thongtinNV = new NhanVien(nhanVien.getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
////				nhanVien.getSdt(), gioiString, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, nhanVien.getChucVu(), null,
////				"Đang làm việc");
//		KhachHang thongtinKH = new KhachHang(khachHang.getId(), khachHang.getTenKH(), khachHang.getEmail(), khachHang.getSdt(), khachHang.getGioiTinh(), khachHang.getNgaySinh(), khachHang.getDiaChi(), khachHang.getTrangThai(), khachHang.getNgayThamGia());
//		model.addAttribute("thongtinNV", thongtinKH);
//		return "taikhoan_customer";
//	}
	

	@PostMapping("/update")
	public String update(@Valid @ModelAttribute("thongtinNV") NhanVien nhanVien, Model model,@RequestParam("matkhaumoi") String matkhaumoi) {
		
		String gioitinh = null;
		String chucvu = "";
		int check = 0;

		if (nhanVien.getGioiTinh().toString().equals("0")) {
			gioitinh = "Nam";
		} else if (nhanVien.getGioiTinh().toString().equals("1")) {

			gioitinh = "Nữ";
		}
		

		NhanVien thongtinNV = new NhanVien(nhanVien.getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
				nhanVien.getSdt(), gioitinh, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, null,
				"Đang làm việc");
System.out.println("id1:"+nhanVien.getId());

		nhanVienService.updateNV(thongtinNV, thongtinNV.getId(), thongtinNV.getEmail());
		String passmoi=passwordEncoder.encode(matkhaumoi);
		String passmoi2="{bcrypt}" + passmoi;
		nhanVienService.updatePass(nhanVien.getId(), passmoi2);

		return "redirect:/admin/chiTietTaiKhoan/";
	}
	
	

}
