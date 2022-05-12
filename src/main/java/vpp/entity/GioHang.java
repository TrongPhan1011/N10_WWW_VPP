package vpp.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "gioHang")
public class GioHang implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6174768525002470914L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private Date ngayThem;
	private String trangThai;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="idKH")
	private KhachHang kh;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getNgayThem() {
		return ngayThem;
	}

	public void setNgayThem(Date ngayThem) {
		this.ngayThem = ngayThem;
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

	public GioHang(int id, Date ngayThem, String trangThai, KhachHang kh) {
		super();
		this.id = id;
		this.ngayThem = ngayThem;
		this.trangThai = trangThai;
		this.kh = kh;
	}

	public GioHang(Date ngayThem, String trangThai, KhachHang kh) {
		super();
		this.ngayThem = ngayThem;
		this.trangThai = trangThai;
		this.kh = kh;
	}

	public GioHang() {
		super();
	}

	@Override
	public String toString() {
		return "GioHang [id=" + id + ", ngayThem=" + ngayThem + ", trangThai=" + trangThai + ", kh=" + kh + "]";
	}
	
	
}
