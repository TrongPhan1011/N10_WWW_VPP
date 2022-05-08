package vpp.implService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vpp.dao.KhachHangDAO;
import vpp.entity.KhachHang;
import vpp.service.KhachHangService;

@Service
public class KhachHangServiceImpl implements KhachHangService {
	@Autowired
	private KhachHangDAO khachHangDAO;

	@Override
	@Transactional
	public List<KhachHang> getTatCaKhachHang() {
		return khachHangDAO.getTatCaKhachHang();
	}

	@Override
	@Transactional
	public KhachHang getKhachHangTheoID(int id) {
		return khachHangDAO.getKhachHangTheoID(id);
	}

	@Override
	@Transactional
	public void themHoacCapNhatKhachHang(KhachHang khachHang) {
		khachHangDAO.themHoacCapNhatKhachHang(khachHang);
		
	}

	@Override
	@Transactional
	public void xoaKhachHang(int id) {
		khachHangDAO.xoaKhachHang(id);
		
	}
	
	
}
