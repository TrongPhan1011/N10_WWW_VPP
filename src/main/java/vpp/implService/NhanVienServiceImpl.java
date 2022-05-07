package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.dao.NhanVienDAO;
import vpp.service.NhanVienService;

@Service
public class NhanVienServiceImpl implements NhanVienService {
	@Autowired
	private NhanVienDAO nhanVienDAO;
	
	
}
