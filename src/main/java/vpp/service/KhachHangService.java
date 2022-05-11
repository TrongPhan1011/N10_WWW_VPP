package vpp.service;


import vpp.entity.KhachHang;

import java.util.List;

import vpp.entity.KhachHang;

public interface KhachHangService {
	public List<KhachHang> getTatCaKhachHang();
	public KhachHang getKhachHangTheoID(int id);
	public void themHoacCapNhatKhachHang(KhachHang khachHang);
	public void xoaKhachHang(int id);
	public void saveKhachHang(KhachHang khachHang);

	

}
