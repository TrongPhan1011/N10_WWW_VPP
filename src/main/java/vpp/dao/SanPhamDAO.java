package vpp.dao;

import java.util.List;

import vpp.entity.SanPham;

public interface SanPhamDAO {
	public List<SanPham> getTatCaSanPham();
	public SanPham getSanPhamTheoID(int id);
	public List<SanPham> getSPGiamDanTheoDaBan();
	public List<SanPham> getSPTheoLoai(String tenLoai);
	public List<SanPham> getSPTheoTenTimKiem(String tenSP);
	public SanPham getSanPhamTheoLoaiNSX(String tenSP,int idNSX, int idLoai);
	public void saveSanPham(SanPham sanPham);
	public void deleteSanPham(int id);
	
	
	

}
