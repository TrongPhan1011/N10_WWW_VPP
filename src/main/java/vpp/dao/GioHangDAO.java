package vpp.dao;

import vpp.entity.GioHang;

public interface GioHangDAO {

	public GioHang getGioHangTheoKhachHang(int id);


	public void saveGiohang(GioHang giohang);


}
