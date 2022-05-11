package vpp.implService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vpp.dao.CTGioHangDAO;
import vpp.entity.CTGioHang;
import vpp.entity.SanPham;
import vpp.service.CTGioHangService;
import vpp.service.DonHangSerivce;

@Service
public class CTGioHangServiceImpl implements CTGioHangService {
	@Autowired
	private CTGioHangDAO ctGioHangDAO;
	private List<SanPham> lsSP = new ArrayList<SanPham>();
	@Override
	@Transactional
	public List<CTGioHang> getCtGioHang(int id) {
		// TODO Auto-generated method stub
		return ctGioHangDAO.getCtGioHang(id);
	}
	
	@Override
	@Transactional
	public int soLuongSanPham(int id) {
		return ctGioHangDAO.soLuongSanPham(id);
	}
	
	
	@Transactional	
	public void themGioHang(SanPham sanPham) {
		lsSP.add(sanPham);
	}

	@Override
	@Transactional	
	public void xoaSanPhamTrongGio(int idSP) {
		lsSP.removeIf(item->item.getId() == idSP);
	}
	
	@Override
	@Transactional	
	public List<SanPham> danhSachGioHang() {
		return lsSP;
	}
	
	@Override
	@Transactional	
	public void suaSanPham(SanPham sanPham) {
		for(int i = 0; i < lsSP.size(); i++) {
			SanPham sp = lsSP.get(i);
			if(sp.getId() == sanPham.getId()) {
				lsSP.set(i,sanPham);
				break;
			}
		}
	}
}
