package vpp.service;

import java.util.List;

import vpp.entity.SanPham;

public interface SanPhamService {
	public List<SanPham> getTatCaSanPham();
	public SanPham getSanPhamTheoID(int id);
	public List<SanPham> getSPGiamDanTheoDaBan();
	public List<SanPham> getSPTheoLoai(String tenLoai);
	public void saveSanPham(SanPham sanPham);
	public void deleteSanPham(int id);
	public SanPham getSanPhamTheoLoaiNSX(String tenSP,int idNSX, int idLoai);
	
	public List<SanPham> getSPTheoTenTimKiem(String tenSP);
	public List<SanPham> getSanPhamTheoGioHang(int id);
	public List<SanPham> getSanPhamTimKiem(String tenSP);

	public List<SanPham> getSPTheoNSX(String tenNSX);
	public List<SanPham> getSPTheoTenTangDan();
	public List<SanPham> getSPTheoGiaTangDan();
	public List<SanPham> getSPTheoGiaGiamDan();
	public List<SanPham> getSPMoi();
	public List<SanPham> getSPTheoLoaiID(int id);
}
