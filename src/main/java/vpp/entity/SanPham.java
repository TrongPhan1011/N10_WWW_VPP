package vpp.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "sanPham")
public class SanPham  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7812191655382598858L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String tenSP;
	private Date ngayNhap;
	private int soLuongTon;
	private int soLuongBan;
	private String moTaSP;
	private double giaBan;
	private double giaGoc;
	private String chatLieu;
	private Date ngaySX;
	private String trangThai;
	private String urlAnhSP;
	
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idNSX")
	private NSX nsx;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idLoai")
	private LoaiSP loaiSP;

	
	
	

	public String getUrlAnhSP() {
		return urlAnhSP;
	}

	public void setUrlAnhSP(String urlAnhSP) {
		this.urlAnhSP = urlAnhSP;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public Date getNgayNhap() {
		return ngayNhap;
	}

	public void setNgayNhap(Date ngayNhap) {
		this.ngayNhap = ngayNhap;
	}

	public int getSoLuongTon() {
		return soLuongTon;
	}

	public void setSoLuongTon(int soLuongTon) {
		this.soLuongTon = soLuongTon;
	}

	public int getSoLuongBan() {
		return soLuongBan;
	}

	public void setSoLuongBan(int soLuongBan) {
		this.soLuongBan = soLuongBan;
	}

	public String getMoTaSP() {
		return moTaSP;
	}

	public void setMoTaSP(String moTaSP) {
		this.moTaSP = moTaSP;
	}

	public double getGiaBan() {
		return giaBan;
	}

	public void setGiaBan(double giaBan) {
		this.giaBan = giaBan;
	}

	public double getGiaGoc() {
		return giaGoc;
	}

	public void setGiaGoc(double giaGoc) {
		this.giaGoc = giaGoc;
	}

	public String getChatLieu() {
		return chatLieu;
	}

	public void setChatLieu(String chatLieu) {
		this.chatLieu = chatLieu;
	}

	public Date getNgaySX() {
		return ngaySX;
	}

	public void setNgaySX(Date ngaySX) {
		this.ngaySX = ngaySX;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public NSX getNsx() {
		return nsx;
	}

	public void setNsx(NSX nsx) {
		this.nsx = nsx;
	}

	public LoaiSP getLoaiSP() {
		return loaiSP;
	}

	public void setLoaiSP(LoaiSP loaiSP) {
		this.loaiSP = loaiSP;
	}

	public SanPham(int id, String tenSP, Date ngayNhap, int soLuongTon, int soLuongBan, String moTaSP, double giaBan,
			double giaGoc, String chatLieu, Date ngaySX, String trangThai, NSX nsx, LoaiSP loaiSP) {
		super();
		this.id = id;
		this.tenSP = tenSP;
		this.ngayNhap = ngayNhap;
		this.soLuongTon = soLuongTon;
		this.soLuongBan = soLuongBan;
		this.moTaSP = moTaSP;
		this.giaBan = giaBan;
		this.giaGoc = giaGoc;
		this.chatLieu = chatLieu;
		this.ngaySX = ngaySX;
		this.trangThai = trangThai;
		this.nsx = nsx;
		this.loaiSP = loaiSP;
	}
	

	public SanPham(int id, String tenSP, Date ngayNhap, int soLuongTon, int soLuongBan, String moTaSP, double giaBan,
			double giaGoc, String chatLieu, Date ngaySX, String trangThai, String urlAnhSP, NSX nsx, LoaiSP loaiSP) {
		super();
		this.id = id;
		this.tenSP = tenSP;
		this.ngayNhap = ngayNhap;
		this.soLuongTon = soLuongTon;
		this.soLuongBan = soLuongBan;
		this.moTaSP = moTaSP;
		this.giaBan = giaBan;
		this.giaGoc = giaGoc;
		this.chatLieu = chatLieu;
		this.ngaySX = ngaySX;
		this.trangThai = trangThai;
		this.urlAnhSP = urlAnhSP;
		this.nsx = nsx;
		this.loaiSP = loaiSP;
	}
	


	public SanPham(String tenSP, Date ngayNhap, int soLuongTon, int soLuongBan, String moTaSP, double giaBan,
			double giaGoc, String chatLieu, Date ngaySX, String trangThai, NSX nsx, LoaiSP loaiSP) {
		super();
		this.tenSP = tenSP;
		this.ngayNhap = ngayNhap;
		this.soLuongTon = soLuongTon;
		this.soLuongBan = soLuongBan;
		this.moTaSP = moTaSP;
		this.giaBan = giaBan;
		this.giaGoc = giaGoc;
		this.chatLieu = chatLieu;
		this.ngaySX = ngaySX;
		this.trangThai = trangThai;
		this.nsx = nsx;
		this.loaiSP = loaiSP;
	}

	public SanPham() {
		super();
	}

	@Override
	public String toString() {
		return "SanPham [id=" + id + ", tenSP=" + tenSP + ", ngayNhap=" + ngayNhap + ", soLuongTon=" + soLuongTon
				+ ", soLuongBan=" + soLuongBan + ", moTaSP=" + moTaSP + ", giaBan=" + giaBan + ", giaGoc=" + giaGoc
				+ ", chatLieu=" + chatLieu + ", ngaySX=" + ngaySX + ", trangThai=" + trangThai + ", nsx=" + nsx
				+ ", loaiSP=" + loaiSP + "]";
	}
	
	
	
	
	
}
