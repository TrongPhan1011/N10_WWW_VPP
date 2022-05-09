package vpp.implService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vpp.dao.NhanVienDAO;
import vpp.entity.NhanVien;
import vpp.service.NhanVienService;

@Service
public class NhanVienServiceImpl implements NhanVienService {
	@Autowired
	private NhanVienDAO nhanVienDAO;

	@Override
	@Transactional
	public List<NhanVien> getAllNV() {
		// TODO Auto-generated method stub
		return nhanVienDAO.getAllNV();
	}

	@Override
	@Transactional
	public void saveNV(NhanVien nhanVien) {
		// TODO Auto-generated method stub
		nhanVienDAO.saveNV(nhanVien);
		
	}

	@Override
	@Transactional
	public void deleteNV(int id) {
		// TODO Auto-generated method stub
		nhanVienDAO.deleteNV(id);
		
	}

	@Override
	@Transactional
	public NhanVien getNVId(int id) {
		// TODO Auto-generated method stub
		return nhanVienDAO.getNVId(id);
	}

	@Override
	@Transactional
	public void updateNV(NhanVien nhanVien, int id,String emailcu) {
		// TODO Auto-generated method stub
		nhanVienDAO.updateNV(nhanVien, id,emailcu);
		
	}
	
	
}
