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
	
	@Override
	@Transactional
	public void addCart(CTGioHang ctGioHang) {
		ctGioHangDAO.addCart(ctGioHang);
	}

}
