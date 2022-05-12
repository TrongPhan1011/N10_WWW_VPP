package vpp.service;

import vpp.entity.GioHang;
import vpp.entity.KhachHang;

public interface GioHangService {

	public GioHang getGioHangTheoKhachHang(int id);


	public void saveGiohang(GioHang giohang);
	public void themHoacCapNhatKhachHang(KhachHang khachHang);

}
