package vpp.dao;


import vpp.entity.KhachHang;
	
import java.util.List;

import vpp.entity.KhachHang;

public interface KhachHangDAO {
	public List<KhachHang> getTatCaKhachHang();
	public KhachHang getKhachHangTheoID(int id);
	public void themHoacCapNhatKhachHang(KhachHang khachHang);
	public void xoaKhachHang(int id);
	public void saveKhachHang(KhachHang thekhachHang);

}
