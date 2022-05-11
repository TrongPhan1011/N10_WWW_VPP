package vpp.controller;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
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
import org.springframework.web.bind.annotation.RestController;

import vpp.entity.KhachHang;
import vpp.entity.NhanVien;
import vpp.service.KhachHangService;
import vpp.service.NhanVienService;

@Controller
@RequestMapping("/admin/nhanvien")
public class NhanVienController {
	@Autowired
	private UserDetailsManager userDetailsManager;
	@Autowired
	private NhanVienService nhanVienService;
	@Autowired
	private KhachHangService khachhang;
	private Date ngaysinh;
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@GetMapping("/")
	public String getAllnhanvien(Model model) {
		List<NhanVien> nhanViens = nhanVienService.getAllNV();
		model.addAttribute("dsNV", nhanViens);
		return "admin/admin-nhanvien";
	}

	@PostMapping("/saveNV")
	public String saveNV(@Valid @ModelAttribute("nhanvien") NhanVien nhanVien, Model model) {
		List<NhanVien> nhanViens = nhanVienService.getAllNV();
		String gioitinh = null;
		String chucvu = null;
		int check = 0;

		if (nhanVien.getGioiTinh().equalsIgnoreCase("0")) {
			gioitinh = "Nam";
		} else {
			gioitinh = "Nữ";
		}
		if (nhanVien.getChucVu().equalsIgnoreCase("0")) {
			chucvu = "Nhân viên";

		} else {
			chucvu = "Quản lý";
		}
		NhanVien thongtinNV = new NhanVien(nhanVien.getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
				nhanVien.getSdt(), gioitinh, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, chucvu,
				LocalDate.now(), "Đang làm việc");
		List<GrantedAuthority> admin = AuthorityUtils.createAuthorityList("ROLE_ADMIN");
		List<GrantedAuthority> employee = AuthorityUtils.createAuthorityList("ROLE_EMPLOYEE");
		System.out.println(check);
		for (int i = 0; i < nhanViens.size(); i++) {
			if (nhanVien.getId() == nhanViens.get(i).getId()) {
				check++;
			}

		}
		System.out.println(check);
		if (check > 0) {
			for (int i = 0; i < nhanViens.size(); i++) {
				if (nhanVien.getId() == nhanViens.get(i).getId()) {
					NhanVien thongtinNV2 = new NhanVien(nhanViens.get(i).getId(), nhanVien.getTenNV(),
							nhanVien.getEmail(), nhanVien.getSdt(), gioitinh, nhanVien.getNgaySinh(),
							nhanVien.getDiaChi(), null, chucvu, null, "Đang làm việc");
					nhanVienService.updateNV(thongtinNV2, nhanViens.get(i).getId(), nhanViens.get(i).getEmail());
				}

			}

		}
		if (check == 0) {
			String pass = "123456";
			String encodedPassword = passwordEncoder.encode(pass);
			encodedPassword = "{bcrypt}" + encodedPassword;
			if (thongtinNV.getChucVu().equalsIgnoreCase("Quản lý")) {
				User user = new User(thongtinNV.getEmail(), encodedPassword, admin);
				userDetailsManager.createUser(user);
			} else {
				User user = new User(thongtinNV.getEmail(), encodedPassword, employee);
				userDetailsManager.createUser(user);
			}
			nhanVienService.saveNV(thongtinNV);
			//
			Date inDate = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd ");
			try {
				ngaysinh = new SimpleDateFormat("yyyy-MM-dd").parse(nhanVien.getNgaySinh().toString());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Date date = new Date(System.currentTimeMillis());
			java.sql.Date date1=new java.sql.Date(System.currentTimeMillis());
			KhachHang khachHang = new KhachHang(thongtinNV.getTenNV(), thongtinNV.getEmail(), thongtinNV.getSdt(),
					thongtinNV.getGioiTinh(), thongtinNV.getNgaySinh(), thongtinNV.getDiaChi(), "Bình thường",date1);
			khachhang.themHoacCapNhatKhachHang(khachHang);

		}

		model.addAttribute("dsNV", nhanViens);
		return "redirect:/admin/nhanvien/";

	}

	@GetMapping("/delete")
	public String deleteNV(@RequestParam("nhanvienID") int id, Model model) {
		nhanVienService.deleteNV(id);
		List<NhanVien> nhanViens3 = nhanVienService.getAllNV();
		model.addAttribute("dsNV", nhanViens3);
		return "redirect:/admin/nhanvien/";
	}

}
