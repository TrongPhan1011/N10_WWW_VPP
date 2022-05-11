package vpp.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
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
import vpp.user.VPPUser;

@Controller
@RequestMapping("/chiTietTaiKhoan")
public class TaiKhoanKHController {
	@Autowired
	private KhachHangService khachHangService;
	@Autowired
	private UserDetailsManager userDetailsManager;
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	
	@GetMapping("/")
	public String getThongTinNV(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		KhachHang kh = khachHangService.getKHEmail(authentication.getName());
		System.out.println(kh.toString());
//		ystem.out.println("gdgdg");
		model.addAttribute("update", kh);
		KhachHang thongtinKH = new KhachHang(kh.getTenKH(), kh.getEmail(), kh.getSdt(), kh.getGioiTinh(), kh.getNgaySinh(), kh.getDiaChi(), kh.getTrangThai(), null);	
		model.addAttribute("thongtinKH", thongtinKH);
		
		return "taikhoan_customer";
	}
	
//	@RequestMapping("/updateKH")
//	public String showFormForUpdate(@ModelAttribute("khachHang") KhachHang khachHang) {
//		converUTF8(khachHang);
//		khachHang.setTrangThai("Bình thường");
//
//		khachHangService.themHoacCapNhatKhachHang(khachHang);
//		return "taikhoan_customer";    
//	}
	@PostMapping("/updateKH")
	public String update(@Valid @ModelAttribute("thongtinKH") KhachHang khachHang, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		KhachHang kh = khachHangService.getKHEmail(authentication.getName());
		System.out.println(kh.toString());
//		System.out.println("gdgdg");
//		model.addAttribute("update", kh);
		KhachHang thongtinKH = new KhachHang(khachHang.getTenKH(), khachHang.getEmail(), khachHang.getSdt(), khachHang.getGioiTinh(), khachHang.getNgaySinh(), khachHang.getDiaChi(), null, null);
		
		System.out.println("id:"+khachHang.getEmail());
		String userName = khachHang.getEmail();
		String password = khachHang.getTrangThai();
		
		if(password != null) {
		
		String encodedPassword = passwordEncoder.encode(password);
		encodedPassword = "{bcrypt}" + encodedPassword;
		VPPUser vppUser = new VPPUser(userName,encodedPassword);
		
		List<GrantedAuthority> authorities = AuthorityUtils.createAuthorityList("ROLE_CUSTOMER");
		 

		
        User tempUser = new User(userName, vppUser.getPassword(), authorities);
        
        userDetailsManager.updateUser(tempUser);
		}
		khachHang.setTrangThai("Bình thường");
		KhachHang kh1 = converUTF8(khachHang);
		khachHangService.updateKH(kh1);
		
		return "taikhoan_customer";
		
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
