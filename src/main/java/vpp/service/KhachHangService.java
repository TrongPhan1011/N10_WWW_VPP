package vpp.service;

import java.util.List;

import vpp.entity.KhachHang;

public interface KhachHangService {
	public List<KhachHang> getTatCaKhachHang();
	public KhachHang getKhachHangTheoID(int id);
	public void themHoacCapNhatKhachHang(KhachHang khachHang);
	public void xoaKhachHang(int id);
}
