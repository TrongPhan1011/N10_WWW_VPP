package vpp.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class PKCTDonHang implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4352828134632180989L;
	
	private int sp;
	private int donHang;
	
	
	public PKCTDonHang() {
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + donHang;
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
		PKCTDonHang other = (PKCTDonHang) obj;
		if (donHang != other.donHang)
			return false;
		if (sp != other.sp)
			return false;
		return true;
	}
	
	
	
	
	
}
