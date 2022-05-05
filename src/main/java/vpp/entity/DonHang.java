package vpp.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "donHang")
public class DonHang implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3410110103626792114L;
	
	@Id
	private int id;
	private Date ngayMua;
	private Date ngayNhan;
	private double tongTien;
	private String thanhToan;
	private String trangThai;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinColumn(name = "idKH")
	private KhachHang kh;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinColumn(name = "idNV")
	private NhanVien nv;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getNgayMua() {
		return ngayMua;
	}

	public void setNgayMua(Date ngayMua) {
		this.ngayMua = ngayMua;
	}

	public Date getNgayNhan() {
		return ngayNhan;
	}

	public void setNgayNhan(Date ngayNhan) {
		this.ngayNhan = ngayNhan;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	public String getThanhToan() {
		return thanhToan;
	}

	public void setThanhToan(String thanhToan) {
		this.thanhToan = thanhToan;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public KhachHang getKh() {
		return kh;
	}

	public void setKh(KhachHang kh) {
		this.kh = kh;
	}

	public NhanVien getNv() {
		return nv;
	}

	public void setNv(NhanVien nv) {
		this.nv = nv;
	}

	public DonHang(int id, Date ngayMua, Date ngayNhan, double tongTien, String thanhToan, String trangThai,
			KhachHang kh, NhanVien nv) {
		super();
		this.id = id;
		this.ngayMua = ngayMua;
		this.ngayNhan = ngayNhan;
		this.tongTien = tongTien;
		this.thanhToan = thanhToan;
		this.trangThai = trangThai;
		this.kh = kh;
		this.nv = nv;
	}

	public DonHang(Date ngayMua, Date ngayNhan, double tongTien, String thanhToan, String trangThai, KhachHang kh,
			NhanVien nv) {
		super();
		this.ngayMua = ngayMua;
		this.ngayNhan = ngayNhan;
		this.tongTien = tongTien;
		this.thanhToan = thanhToan;
		this.trangThai = trangThai;
		this.kh = kh;
		this.nv = nv;
	}

	public DonHang() {
		super();
	}

	@Override
	public String toString() {
		return "DonHang [id=" + id + ", ngayMua=" + ngayMua + ", ngayNhan=" + ngayNhan + ", tongTien=" + tongTien
				+ ", thanhToan=" + thanhToan + ", trangThai=" + trangThai + "]";
	}
	
	

}
