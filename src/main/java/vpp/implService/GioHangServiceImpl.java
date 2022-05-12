package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vpp.dao.GioHangDAO;
import vpp.dao.KhachHangDAO;
import vpp.entity.GioHang;
import vpp.entity.KhachHang;
import vpp.service.GioHangService;

@Service
public class GioHangServiceImpl implements GioHangService {
	@Autowired
	private GioHangDAO gioHangDAO ;
	
	@Autowired
	private KhachHangDAO khachHangDAO;
	
	@Override
	@Transactional
	public GioHang getGioHangTheoKhachHang(int id) {
		return gioHangDAO.getGioHangTheoKhachHang(id);
	}


	@Override
	@Transactional
	public void saveGiohang(GioHang giohang) {
		// TODO Auto-generated method stub
		gioHangDAO.saveGiohang(giohang);
		
	}
	
	@Override
	@Transactional
	public void themHoacCapNhatKhachHang(KhachHang khachHang) {
		khachHangDAO.themHoacCapNhatKhachHang(khachHang);
		
	}


}	
