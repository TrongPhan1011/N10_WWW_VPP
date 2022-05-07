package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.dao.CTDonHangDAO;
import vpp.service.CTDonHangService;

@Service
public class CTDonHangServiceImpl implements CTDonHangService {
	@Autowired
	private CTDonHangDAO ctDonHangDAO;
	
	

}
