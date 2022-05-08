package vpp.implService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vpp.dao.SanPhamDAO;
import vpp.entity.SanPham;
import vpp.service.SanPhamService;

@Service
public class SanPhamServiceImpl implements SanPhamService {
	@Autowired
	private SanPhamDAO sanPhamDAO;

	@Override
	@Transactional
	public List<SanPham> getTatCaSanPham() {
		return sanPhamDAO.getTatCaSanPham();
	}

	@Override
	@Transactional
	public List<SanPham> getSPGiamDanTheoDaBan() {
		
		return sanPhamDAO.getSPGiamDanTheoDaBan();
	}

	@Override
	@Transactional
	public List<SanPham> getSPTheoLoai(String tenLoai) {
		return sanPhamDAO.getSPTheoLoai(tenLoai);
	}
	
	
}
