package vpp.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vpp.entity.NhanVien;
import vpp.service.NhanVienService;

@Controller
@RequestMapping("/admin/nhanvien")
public class NhanVienController {
	@Autowired
	private UserDetailsManager userDetailsManager;
	@Autowired
	private NhanVienService nhanVienService;
	

	@GetMapping("/")
	public String getAllnhanvien(Model model) {
		List<NhanVien> nhanViens = nhanVienService.getAllNV();
		model.addAttribute("dsNV", nhanViens);
		return "admin/admin-nhanvien";
	}

	@PostMapping("/saveNV")
	public String saveNV(@Valid @ModelAttribute("nhanvien") NhanVien nhanVien,Model model) {
		List<NhanVien> nhanViens = nhanVienService.getAllNV();
		String gioitinh = null;
		String chucvu = null;
		int  check = 0;

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
				nhanVien.getSdt(), gioitinh, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, chucvu, null,
				"Đang làm việc");
		List<GrantedAuthority> admin = AuthorityUtils.createAuthorityList("ROLE_ADMIN");
		List<GrantedAuthority> employee = AuthorityUtils.createAuthorityList("ROLE_EMPLOYEE");
		System.out.println(check);
		for (int i = 0; i < nhanViens.size(); i++) {
			if (nhanVien.getId()==nhanViens.get(i).getId()) {
				check++;
			}

		}
		System.out.println(check);
		if (check >0) {
			for (int i = 0; i < nhanViens.size(); i++) {
				if (nhanVien.getId()==nhanViens.get(i).getId() ) {
					NhanVien thongtinNV2 = new NhanVien(nhanViens.get(i).getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
							nhanVien.getSdt(), gioitinh, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, chucvu, null,
							"Đang làm việc");
					nhanVienService.updateNV(thongtinNV2, nhanViens.get(i).getId(),nhanViens.get(i).getEmail());
				}

			}
			
			}
		if(check==0) {
			if (thongtinNV.getChucVu().equalsIgnoreCase("Quản lý")) {
				User user = new User(thongtinNV.getEmail(), "123456", admin);
				userDetailsManager.createUser(user);
			} else {
				User user = new User(thongtinNV.getEmail(), "123456", employee);
				userDetailsManager.createUser(user);
			}
			nhanVienService.saveNV(thongtinNV);
			System.out.println(check);
		}
	
		model.addAttribute("dsNV", nhanViens);
		return "redirect:/admin/nhanvien/";

		
	}

	@GetMapping("/delete")
	public String deleteNV(@RequestParam("nhanvienID") int id,Model model) {
		nhanVienService.deleteNV(id);
		List<NhanVien> nhanViens3 = nhanVienService.getAllNV();
		model.addAttribute("dsNV", nhanViens3);
		return "redirect:/admin/nhanvien/";
	}

}
