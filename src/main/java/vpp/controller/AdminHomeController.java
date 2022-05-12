package vpp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import vpp.entity.NhanVien;
import vpp.entity.SanPham;
import vpp.service.LoaiSPService;
import vpp.service.NhanVienService;
import vpp.service.SanPhamService;

@Controller
@RequestMapping("/admin")
public class AdminHomeController {
	@Autowired
	private NhanVienService nhanVienService;
	

	@Autowired
	private SanPhamService sanPhamService;
	
	@Autowired
	private LoaiSPService loaiSPService;
	
	@GetMapping("/")
	public String showAdmin(Model model) {
		
		String gioiString=null;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		NhanVien nhanVien = nhanVienService.getNVEmail(authentication.getName());
		if(nhanVien.getGioiTinh().equals("Nữ")) {
			gioiString="1";
		}

		NhanVien thongtinNV = new NhanVien(nhanVien.getId(), nhanVien.getTenNV(), nhanVien.getEmail(),
				nhanVien.getSdt(), gioiString, nhanVien.getNgaySinh(), nhanVien.getDiaChi(), null, nhanVien.getChucVu(), null,
				"Đang làm việc");
		
		List<SanPham> lsSPNoiBac1= getListSPNoiBac(0);
		List<SanPham> lsSPNoiBac2= getListSPNoiBac(4);
		
		
		model.addAttribute("nv",thongtinNV);
		model.addAttribute("lsSP1",lsSPNoiBac1);
		model.addAttribute("lsSP2",lsSPNoiBac2);
		return "/admin/admin";
		
	}
	public List<SanPham> getListSPNoiBac(int index){
		List<SanPham> ls = sanPhamService.getSPGiamDanTheoDaBan();
		List<SanPham> lsTemp = new ArrayList<SanPham>();
		if(ls.size() < 4)
			return ls;
		else {
			
			for(int i = index; i< 4; i++) {
				if(ls.get(i)!=null)
					lsTemp.add(ls.get(i));
			}
			return lsTemp;
		}
		
	}
	
	
}
