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

	@Override
	@Transactional
	public SanPham getSanPhamTheoID(int id) {
		return sanPhamDAO.getSanPhamTheoID(id);
	}

	@Override
	@Transactional
	public void saveSanPham(SanPham sanPham) {
		sanPhamDAO.saveSanPham(sanPham);


	}
	@Override
	@Transactional
	public List<SanPham> getSPTheoNSX(String tenNSX) {

		return sanPhamDAO.getSPTheoNSX(tenNSX);

	}


	@Override
	@Transactional
	public void deleteSanPham(int id) {
		sanPhamDAO.deleteSanPham(id);

	}

	@Override
	@Transactional
	public List<SanPham> getSPTheoTenTangDan() {

		return sanPhamDAO.getSPTheoTenTangDan();
	}


	@Override
	@Transactional
	public SanPham getSanPhamTheoLoaiNSX(String tenSP, int idNSX, int idLoai) {

		return sanPhamDAO.getSanPhamTheoLoaiNSX(tenSP, idNSX, idLoai);

	}
	@Override
	@Transactional
	public List<SanPham> getSPTheoGiaTangDan() {

		return sanPhamDAO.getSPTheoGiaTangDan();
	}

	@Override
	@Transactional
	public List<SanPham> getSPTheoTenTimKiem(String tenSP) {
		return sanPhamDAO.getSPTheoTenTimKiem(tenSP);



	}

	@Override
	@Transactional
	public List<SanPham> getSPTheoGiaGiamDan() {

		return sanPhamDAO.getSPTheoGiaGiamDan();}



	@Override
	@Transactional
	public List<SanPham> getSanPhamTheoGioHang(int id) {
		return sanPhamDAO.getSanPhamTheoGioHang(id);
	}

	@Override
	@Transactional
	public List<SanPham> getSanPhamTimKiem(String tenSP) {
		return sanPhamDAO.getSanPhamTimKiem(tenSP);
	}

	@Override
	@Transactional
	public List<SanPham> getSPMoi() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<SanPham> getSPTheoLoaiID(int id) {
		
		return sanPhamDAO.getSPTheoLoaiID(id);
	}

}
