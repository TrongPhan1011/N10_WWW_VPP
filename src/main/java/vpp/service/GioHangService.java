package vpp.service;

import vpp.entity.GioHang;

public interface GioHangService {

	public GioHang getGioHangTheoKhachHang(int id);

	public void saveGiohang(GioHang giohang);
}
