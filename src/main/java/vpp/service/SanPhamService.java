package vpp.service;

import java.util.List;

import vpp.entity.SanPham;

public interface SanPhamService {
	public List<SanPham> getTatCaSanPham();
	public SanPham getSanPhamTheoID(int id);
	public List<SanPham> getSPGiamDanTheoDaBan();
	public List<SanPham> getSPTheoLoai(String tenLoai);
	public List<SanPham> getSanPhamTheoGioHang(int id);
}
