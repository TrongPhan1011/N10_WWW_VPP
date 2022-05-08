package vpp.service;

import java.util.List;

import vpp.entity.SanPham;

public interface SanPhamService {
	public List<SanPham> getTatCaSanPham();
	
	public SanPham getSanPhamTheoID(int id);
}
