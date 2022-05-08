package vpp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import vpp.entity.LoaiSP;
import vpp.entity.SanPham;
import vpp.service.LoaiSPService;
import vpp.service.SanPhamService;

@Controller
public class CustomerHomeController {
	

	@Autowired
	private SanPhamService sanPhamService;
	
	@Autowired
	private LoaiSPService loaiSPService;
	
	
	
	@GetMapping("/")
    public String showHomePage(Model theModel) {
		
		List<SanPham> sanPhams=sanPhamService.getTatCaSanPham();
		List<SanPham> lsSPNoiBac= getListSPNoiBac();
		List<SanPham> lsGiayIn= getSPTheoLoai("Giấy in");
		List<SanPham> lsButViet= getSPTheoLoai("Bút viết");
		List<LoaiSP> lsLoaiSP = loaiSPService.getAllLoai();
		theModel.addAttribute("dsSanPham", sanPhams);
		theModel.addAttribute("dsLoaiSP", lsLoaiSP);
		theModel.addAttribute("dsSPNoiBac", lsSPNoiBac);
		theModel.addAttribute("dsGiayIn",lsGiayIn );
		theModel.addAttribute("dsButViet",lsButViet );
		
        return "index";
    }
	
	
	public List<SanPham> getListSPNoiBac(){
		List<SanPham> ls = sanPhamService.getSPGiamDanTheoDaBan();
		List<SanPham> lsTemp = new ArrayList<SanPham>();
		if(ls.size() < 4)
			return ls;
		else {
			
			for(int i = 0; i< 4; i++) {
				if(ls.get(i)!=null)
					lsTemp.add(ls.get(i));
			}
			return lsTemp;
		}
		
	}
	public List<SanPham> getSPTheoLoai(String tenLoai){
		List<SanPham> ls = sanPhamService.getSPTheoLoai(tenLoai);
		List<SanPham> lsTemp = new ArrayList<SanPham>();
		if(ls.size() < 4)
			return ls;
		else {
			
			for(int i = 0; i< 4; i++) {
				if(ls.get(i)!=null)
					lsTemp.add(ls.get(i));
			}
			return lsTemp;
		}
		
	}
	
	
	
	

}
