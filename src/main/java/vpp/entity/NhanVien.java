package vpp.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "nhanVien")
public class NhanVien implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7666172346179796367L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String tenNV;
	
	private String email;
	private String sdt;
	private String gioiTinh;
	private Date ngaySinh;
	private String diaChi;
	private String urlAnh;
	private String chucVu;
	private Date ngayDangKy;
	private String trangThai;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenNV() {
		return tenNV;
	}
	public void setTenNV(String tenNV) {
		this.tenNV = tenNV;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getUrlAnh() {
		return urlAnh;
	}
	public void setUrlAnh(String urlAnh) {
		this.urlAnh = urlAnh;
	}
	public String getChucVu() {
		return chucVu;
	}
	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}
	public Date getNgayDangKy() {
		return ngayDangKy;
	}
	public void setNgayDangKy(Date ngayDangKy) {
		this.ngayDangKy = ngayDangKy;
	}
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	public NhanVien(int id, String tenNV, String email, String sdt, String gioiTinh, Date ngaySinh, String diaChi,
			String urlAnh, String chucVu, Date ngayDangKy, String trangThai) {
		super();
		this.id = id;
		this.tenNV = tenNV;
		this.email = email;
		this.sdt = sdt;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.urlAnh = urlAnh;
		this.chucVu = chucVu;
		this.ngayDangKy = ngayDangKy;
		this.trangThai = trangThai;
	}
	public NhanVien(String tenNV, String email, String sdt, String gioiTinh, Date ngaySinh, String diaChi,
			String urlAnh, String chucVu, Date ngayDangKy, String trangThai) {
		super();
		this.tenNV = tenNV;
		this.email = email;
		this.sdt = sdt;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.urlAnh = urlAnh;
		this.chucVu = chucVu;
		this.ngayDangKy = ngayDangKy;
		this.trangThai = trangThai;
	}
	public NhanVien(String tenNV, String email, String sdt, String gioiTinh, Date ngaySinh, String diaChi,
			String chucVu, Date ngayDangKy, String trangThai) {
		super();
		this.tenNV = tenNV;
		this.email = email;
		this.sdt = sdt;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.chucVu = chucVu;
		this.ngayDangKy = ngayDangKy;
		this.trangThai = trangThai;
	}
	
	
	public NhanVien() {
	}
	@Override
	public String toString() {
		return "NhanVien [id=" + id + ", tenNV=" + tenNV + ", email=" + email + ", sdt=" + sdt + ", gioiTinh="
				+ gioiTinh + ", ngaySinh=" + ngaySinh + ", diaChi=" + diaChi + ", urlAnh=" + urlAnh + ", chucVu="
				+ chucVu + ", ngayDangKy=" + ngayDangKy + ", trangThai=" + trangThai + "]";
	}
	

}
