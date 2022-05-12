package vpp.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "khachHang")
public class KhachHang implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2523926418249580199L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String tenKH;
	private String email;
	private String sdt;
	private String gioiTinh;
	private Date ngaySinh;
	private String diaChi;
	private String trangThai;
	private Date ngayThamGia;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenKH() {
		return tenKH;
	}
	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
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
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	public Date getNgayThamGia() {
		return ngayThamGia;
	}
	public void setNgayThamGia(Date ngayThamGia) {
		this.ngayThamGia = ngayThamGia;
	}
	public KhachHang(int id, String tenKH, String email, String sdt, String gioiTinh, Date ngaySinh, String diaChi,
			String trangThai, Date ngayThamGia) {
		super();
		this.id = id;
		this.tenKH = tenKH;
		this.email = email;
		this.sdt = sdt;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.trangThai = trangThai;
		this.ngayThamGia = ngayThamGia;
	}
	public KhachHang(String tenKH, String email, String sdt, String gioiTinh, Date ngaySinh, String diaChi,
			String trangThai, Date ngayThamGia) {
		super();
		this.tenKH = tenKH;
		this.email = email;
		this.sdt = sdt;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.trangThai = trangThai;
		this.ngayThamGia = ngayThamGia;
	}
	
	public KhachHang() {
		super();
	}
	@Override
	public String toString() {
		return "KhachHang [id=" + id + ", tenKH=" + tenKH + ", email=" + email + ", sdt=" + sdt + ", gioiTinh="
				+ gioiTinh + ", ngaySinh=" + ngaySinh + ", diaChi=" + diaChi + ", trangThai=" + trangThai
				+ ", ngayThamGia=" + ngayThamGia + "]";
	}
	
	
	
	
	

}
