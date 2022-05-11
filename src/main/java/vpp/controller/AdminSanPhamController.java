package vpp.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.file.Path;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.cj.util.DnsSrv.SrvRecord;

import vpp.entity.LoaiSP;
import vpp.entity.NSX;
import vpp.entity.SanPham;
import vpp.entity.SanPhamImg;
import vpp.service.LoaiSPService;
import vpp.service.NSXService;
import vpp.service.NhanVienService;
import vpp.service.SanPhamService;

@Controller
@RequestMapping("/admin/sanpham")

public class AdminSanPhamController {
	
	@Autowired
	private LoaiSPService loaiSPService;
	@Autowired
	private SanPhamService sanPhamService;
	
	@Autowired
	private NSXService nsxService;
	
	@Autowired
	private ServletContext context;
	
	
	
	@GetMapping("/")
	public String showSanPhamAdmin(Model model) {
		List<LoaiSP> lsLoaiSP = getAllLoaiSP();
		List<SanPham> lsSanPham = sanPhamService.getTatCaSanPham();
		
		List<NSX> lsNSX = nsxService.getTatCaNSX();
		
		model.addAttribute("dsLoaiSP",lsLoaiSP);
		model.addAttribute("dsTatCaSP",lsSanPham);
		model.addAttribute("dsNSX",lsNSX);
		
		
		
		return "/admin/admin-san-pham";
	}
	
	@GetMapping("/timkiem")
	public String showSanPhamAdminTimKiem(Model model,@RequestParam(value="timkiem") String search) throws UnsupportedEncodingException {
		List<LoaiSP> lsLoaiSP = getAllLoaiSP();
		
		
		search = new String(search.getBytes("ISO-8859-1"), "UTF-8");
		List<SanPham> lsSanPham = sanPhamService.getSPTheoTenTimKiem(search);
		
		
		
		List<NSX> lsNSX = nsxService.getTatCaNSX();
		
		model.addAttribute("dsLoaiSP",lsLoaiSP);
		model.addAttribute("dsTatCaSP",lsSanPham);
		model.addAttribute("dsNSX",lsNSX);
		
		
		
		return "/admin/admin-san-pham";
	}
	
	
	
	
	@RequestMapping(value="/saveSanPham",method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("FormSanPham") SanPhamImg sp,Model model,@RequestParam(value="id") int id) {
		
		SanPham sanpham = new SanPham();
		
		String path = context.getRealPath("/");
		System.out.println(path);
		
		try {
			
			sp.setUrlAnhSP(sp.getFileImage().getOriginalFilename());
			String filePath = path+ File.separator + "resources/assets/img/sp/" + sp.getUrlAnhSP();
			sp.getFileImage().transferTo(Path.of(filePath));
			
			
			
			sanpham = new SanPham(sp.getTenSP(), sp.getNgayNhap(), sp.getSoLuongTon(), sp.getSoLuongBan(), sp.getMoTaSP(), sp.getGiaBan(), sp.getGiaGoc(), sp.getChatLieu(), sp.getNgaySX(), sp.getTrangThai(), sp.getNsx(), sp.getLoaiSP());
			sanpham.setUrlAnhSP(sp.getUrlAnhSP());
			if(id >=0) {
				sanpham.setId(id);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		SanPham sanPhamConvert = convertUTF8(sanpham);
		
		
		sanPhamService.saveSanPham(sanPhamConvert);
		
		
		
		return "redirect:/admin/sanpham/";
	}
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("sanPhamId") int id) {
		sanPhamService.deleteSanPham(id);
		
		return "redirect:/admin/sanpham/";
	}
	
	
	
	
	
	
	
	public SanPham convertUTF8(SanPham sp) {
		String ten = sp.getTenSP();
		String moTa = sp.getMoTaSP();
		try {
			String tenUTF8 = new String(ten.getBytes("ISO-8859-1"), "UTF-8");
			String moTaUTF8 = new String(moTa.getBytes("ISO-8859-1"), "UTF-8");
			String chatLieuUTF8 = new String(sp.getChatLieu().getBytes("ISO-8859-1"), "UTF-8");
			sp.setTenSP(tenUTF8);
			sp.setMoTaSP(moTaUTF8);
			sp.setChatLieu(chatLieuUTF8);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return sp;
	}
	
	
	public List<LoaiSP> getAllLoaiSP(){
		return loaiSPService.getAllLoai();
	}
	public int getIdSPMax(List<SanPham> lsSanPham) {
		SanPham sp = lsSanPham.get(lsSanPham.size()-1);
		int idSPMoi = sp.getId()+1;
		return idSPMoi;
		
	}
}
