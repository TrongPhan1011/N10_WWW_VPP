package vpp.entity;

import java.io.Serializable;

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
@Table(name ="anh")
public class Anh implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8613931883419748753L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String tenAnh;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinColumn(name = "idSP")
	private SanPham sp;
	
	
	public SanPham getSp() {
		return sp;
	}
	public void setSp(SanPham sp) {
		this.sp = sp;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenAnh() {
		return tenAnh;
	}
	public void setTenAnh(String tenAnh) {
		this.tenAnh = tenAnh;
	}
	public Anh(int id, String tenAnh) {
		super();
		this.id = id;
		this.tenAnh = tenAnh;
	}
	public Anh(String tenAnh) {
		super();
		this.tenAnh = tenAnh;
	}
	
	public Anh(String tenAnh, SanPham sp) {
		super();
		this.tenAnh = tenAnh;
		this.sp = sp;
	}
	public Anh(int id, String tenAnh, SanPham sp) {
		super();
		this.id = id;
		this.tenAnh = tenAnh;
		this.sp = sp;
	}
	public Anh() {
		super();
	}
	@Override
	public String toString() {
		return "Anh [id=" + id + ", tenAnh=" + tenAnh + "]";
	}
	
	

}
