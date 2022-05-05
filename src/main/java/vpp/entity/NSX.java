package vpp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "nsx")
public class NSX implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7980667402768371191L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String tenNSX;
	private String diaChi;
	private String trangThai;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenNSX() {
		return tenNSX;
	}
	public void setTenNSX(String tenNSX) {
		this.tenNSX = tenNSX;
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
	public NSX(int id, String tenNSX, String diaChi, String trangThai) {
		super();
		this.id = id;
		this.tenNSX = tenNSX;
		this.diaChi = diaChi;
		this.trangThai = trangThai;
	}
	public NSX(String tenNSX, String diaChi, String trangThai) {
		super();
		this.tenNSX = tenNSX;
		this.diaChi = diaChi;
		this.trangThai = trangThai;
	}
	public NSX() {
	}
	@Override
	public String toString() {
		return "NSX [id=" + id + ", tenNSX=" + tenNSX + ", diaChi=" + diaChi + ", trangThai=" + trangThai + "]";
	}
	
	

}
