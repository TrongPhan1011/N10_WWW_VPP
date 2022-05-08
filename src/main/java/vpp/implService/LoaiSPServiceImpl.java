package vpp.implService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.dao.LoaiSPDAO;
import vpp.entity.LoaiSP;
import vpp.service.LoaiSPService;

@Service
public class LoaiSPServiceImpl implements LoaiSPService {
	@Autowired
	private LoaiSPDAO loaiSPDAO ;

	@Override
	@Transactional
	public List<LoaiSP> getAllLoai() {
		
		return loaiSPDAO.getAllLoai();
	}
	
	
}
