package vpp.service;

import java.util.List;


import vpp.entity.CTGioHang;
import vpp.entity.SanPham;

public interface CTGioHangService {

	public List<CTGioHang> getCtGioHang(int id);
	public int soLuongSanPham(int id);
	public void themGioHang(SanPham sanPham);
	public void xoaSanPhamTrongGio(int idSP);
	public List<SanPham> danhSachGioHang();
	public void suaSanPham(SanPham sanPham);
}
