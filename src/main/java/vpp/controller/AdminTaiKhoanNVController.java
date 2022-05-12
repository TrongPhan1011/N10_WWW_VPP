package vpp.controller;

import java.io.UnsupportedEncodingException;
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

import vpp.entity.NhanVien;
import vpp.service.NhanVienService;

@Controller
@RequestMapping("/admin/chiTietTaiKhoan")
public class AdminTaiKhoanNVController {
	@Autowired
	private UserDetailsManager userDetailsManager;
	@Autowired
	private NhanVienService nhanVienService;
	
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@GetMapping("/")
	public String getThongTinNV(Model model) {
		String gioiString=null;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		NhanVien nhanVien = nhanVienService.getNVEmail(authentication.getName());
		if(nhanVien.getGioiTinh().equals("Nữ")) {
			gioiString="1";
		}
//		NhanVien nhanViens = nhanVienService.getNVId(1);
		NhanVien thongtinNV = new NhanVien(nhanVien.getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
				nhanVien.getSdt(), gioiString, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, nhanVien.getChucVu(), null,
				"Đang làm việc");
		model.addAttribute("thongtinNV", thongtinNV);
		return "admin/admin-taikhoan";
	}

	@PostMapping("/update")

	public String update(@Valid @ModelAttribute("thongtinNV") NhanVien nhanVien, Model model,@RequestParam("matkhaumoi") String matkhaumoi) {
		converUTF8(nhanVien);
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


		nhanVienService.updateNV(thongtinNV, thongtinNV.getId(), thongtinNV.getEmail());
		String passmoi=passwordEncoder.encode(matkhaumoi);
		String passmoi2="{bcrypt}" + passmoi;
		nhanVienService.updatePass(nhanVien.getId(), passmoi2);

		return "redirect:/admin/chiTietTaiKhoan/";
	}
	private NhanVien converUTF8(NhanVien nhanVien) {
		// TODO Auto-generated method stub
		String ten = nhanVien.getTenNV();
		String diaChi= nhanVien.getDiaChi();
		try {
			String tenUTF8 = new String(ten.getBytes("ISO-8859-1"), "UTF8");
			String diaChiUTF8 = new String(diaChi.getBytes("ISO-8859-1"), "UTF8");
			nhanVien.setTenNV(tenUTF8);
			nhanVien.setDiaChi(diaChiUTF8);
		}catch (UnsupportedEncodingException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return nhanVien;
	}

}
