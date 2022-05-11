package vpp.service;

import java.util.List;

import vpp.entity.NhanVien;

public interface NhanVienService {
	public List<NhanVien> getAllNV();
	public void saveNV(NhanVien nhanVien);
	public void deleteNV(int id);
	public NhanVien getNVId(int id);
	public void updateNV(NhanVien nhanVien,int id,String emailcu);
	public NhanVien getNVEmail(String email);

}
