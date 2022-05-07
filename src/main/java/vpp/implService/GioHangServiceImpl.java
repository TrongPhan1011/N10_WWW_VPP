package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.dao.GioHangDAO;
import vpp.service.GioHangService;

@Service
public class GioHangServiceImpl implements GioHangService {
	@Autowired
	private GioHangDAO gioHangDAO ;
	
	
}
