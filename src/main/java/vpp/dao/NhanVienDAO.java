package vpp.dao;

import java.util.List;

import vpp.entity.NhanVien;

public interface NhanVienDAO {
	public List<NhanVien> getAllNV();
	public void saveNV(NhanVien nhanVien);
	public void deleteNV(int id);
	public void updateNV(NhanVien nhanVien,int id,String emailcu);
	public NhanVien getNVId(int id);

	
	
}
