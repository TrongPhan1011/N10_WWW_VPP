package vpp.dao;

import java.util.List;

import vpp.entity.SanPham;

public interface SanPhamDAO {
	public List<SanPham> getTatCaSanPham();
	public List<SanPham> getSPGiamDanTheoDaBan();
	public List<SanPham> getSPTheoLoai(String tenLoai);
	
	
}
