package vpp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "loaiSP")
public class LoaiSP implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1635224652125468448L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String tenLoai;
	private String trangThai;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	public LoaiSP(int id, String tenLoai, String trangThai) {
		super();
		this.id = id;
		this.tenLoai = tenLoai;
		this.trangThai = trangThai;
	}
	public LoaiSP(String tenLoai, String trangThai) {
		super();
		this.tenLoai = tenLoai;
		this.trangThai = trangThai;
	}
	public LoaiSP() {
		super();
	}
	@Override
	public String toString() {
		return "LoaiSP [id=" + id + ", tenLoai=" + tenLoai + ", trangThai=" + trangThai + "]";
	}
	
	
	

}
