package vpp.implService;


import javax.transaction.Transactional;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vpp.dao.KhachHangDAO;
import vpp.entity.KhachHang;
import vpp.entity.NhanVien;
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
	@Override
	@Transactional
	public KhachHang getKHEmail(String email) {
		// TODO Auto-generated method stub
		return khachHangDAO.getKHEmail(email);
	}

	@Override
	@Transactional
	public void saveKhachHang(KhachHang khachHang) {
		// TODO Auto-generated method stub
		khachHangDAO.saveKhachHang(khachHang);
		
	}
	
	@Override
	@Transactional
	public KhachHang getKhachHangTheoEmail(String email) {
		return khachHangDAO.getKhachHangTheoEmail(email);
	}

	@Override
	@Transactional
	public void updateKH(KhachHang khachHang) {
		khachHangDAO.themHoacCapNhatKhachHang(khachHang);
		
	}
	
	
}
