package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.entity.CTGioHang;
import vpp.service.CTGioHangService;
import vpp.service.DonHangSerivce;

@Service
public class CTGioHangServiceImpl implements CTGioHangService {
	@Autowired
	private CTGioHangService ctGioHangService;

	@Override
	public CTGioHang getCtGioHang(int id) {
		// TODO Auto-generated method stub
		return ctGioHangService.getCtGioHang(id);
	}
	
	
}
