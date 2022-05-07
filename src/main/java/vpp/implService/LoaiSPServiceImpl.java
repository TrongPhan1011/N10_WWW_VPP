package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.dao.LoaiSPDAO;
import vpp.service.LoaiSPService;

@Service
public class LoaiSPServiceImpl implements LoaiSPService {
	@Autowired
	private LoaiSPDAO loaiSPDAO ;
	
	
}
