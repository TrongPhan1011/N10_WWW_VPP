package vpp.entity;


import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class PKCTGioHang implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8693672728782079355L;

	private int gioHang;
	private int sp;
	public PKCTGioHang() {
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + gioHang;
		result = prime * result + sp;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PKCTGioHang other = (PKCTGioHang) obj;
		if (gioHang != other.gioHang)
			return false;
		if (sp != other.sp)
			return false;
		return true;
	}
	
	

}
