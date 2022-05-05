package vpp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "ctDonHang")
@IdClass(PKCTDonHang.class)
public class CTDonHang implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3536062017508336637L;
	@Id
	@ManyToOne
	@JoinColumn(name = "idSP")
	private SanPham sp;
	@Id
	@ManyToOne
	@JoinColumn(name = "idDonHang")
	private DonHang donHang;
	private int soLuong;
	public SanPham getSp() {
		return sp;
	}
	public void setSp(SanPham sp) {
		this.sp = sp;
	}
	public DonHang getDonHang() {
		return donHang;
	}
	public void setDonHang(DonHang donHang) {
		this.donHang = donHang;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public CTDonHang(int soLuong) {
		super();
		this.soLuong = soLuong;
	}
	
	public CTDonHang() {
		super();
	}
	@Override
	public String toString() {
		return "CTDonHang [sp=" + sp + ", donHang=" + donHang + ", soLuong=" + soLuong + "]";
	}
	
	
	

}
