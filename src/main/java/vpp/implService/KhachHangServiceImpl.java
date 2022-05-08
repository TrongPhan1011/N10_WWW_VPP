package vpp.implService;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.dao.KhachHangDAO;
import vpp.entity.KhachHang;
import vpp.service.KhachHangService;

@Service
public class KhachHangServiceImpl implements KhachHangService {
	@Autowired
	private KhachHangDAO khachHangDAO;

	@Override
	@Transactional
	public void saveKhachHang(KhachHang thekhachHang) {
		// TODO Auto-generated method stub
		
		khachHangDAO.saveKhachHang(thekhachHang);
		
	}
	
	
}
