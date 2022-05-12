package vpp.dao;


import vpp.entity.KhachHang;
import vpp.user.VPPUser;

import java.util.List;

import vpp.entity.KhachHang;

public interface KhachHangDAO {
	public List<KhachHang> getTatCaKhachHang();
	public KhachHang getKhachHangTheoID(int id);
	public void themHoacCapNhatKhachHang(KhachHang khachHang);
	public void xoaKhachHang(int id);
	public KhachHang getKhachHangTheoEmail(String email);
	public void saveKhachHang(KhachHang thekhachHang);
	public KhachHang getKHEmail(String email);
	public void updateKH(KhachHang khachHang);

}
