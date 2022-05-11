package vpp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ctGioHang")
@IdClass(PKCTGioHang.class)
public class CTGioHang implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5063135161612151043L;
	
	
	@Id
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idGioHang")
	private GioHang gioHang;
	@Id
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idSP")
	private SanPham sp;
	private int soLuong;
	
	public GioHang getGioHang() {
		return gioHang;
	}
	public void setGioHang(GioHang gioHang) {
		this.gioHang = gioHang;
	}
	public SanPham getSp() {
		return sp;
	}
	public void setSp(SanPham sp) {
		this.sp = sp;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public CTGioHang(GioHang gioHang, SanPham sp, int soLuong) {
		super();
		this.gioHang = gioHang;
		this.sp = sp;
		this.soLuong = soLuong;
	}
	public CTGioHang(int soLuong) {
		super();
		this.soLuong = soLuong;
	}
	public CTGioHang() {
		super();
	}
	@Override
	public String toString() {
		return "CTGioHang [gioHang=" + gioHang + ", sp=" + sp + ", soLuong=" + soLuong + "]";
	}
	
	

}
