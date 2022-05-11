package vpp.entity;



	
	


	import java.io.Serializable;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;


	
	public class SanPhamImg  implements Serializable {

		/**
		 * 
		 */
		private static final long serialVersionUID = -7812191655382598858L;
		
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
		private MultipartFile fileImage;
		
		
		
		private NSX nsx;
		
		
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

		
		

		


		

		@Override
		public String toString() {
			return "SanPham [id=" + id + ", tenSP=" + tenSP + ", ngayNhap=" + ngayNhap + ", soLuongTon=" + soLuongTon
					+ ", soLuongBan=" + soLuongBan + ", moTaSP=" + moTaSP + ", giaBan=" + giaBan + ", giaGoc=" + giaGoc
					+ ", chatLieu=" + chatLieu + ", ngaySX=" + ngaySX + ", trangThai=" + trangThai + ", nsx=" + nsx
					+ ", loaiSP=" + loaiSP + "]";
		}

		public MultipartFile getFileImage() {
			return fileImage;
		}

		public void setFileImage(MultipartFile fileImage) {
			this.fileImage = fileImage;
		}

		public SanPhamImg(int id, String tenSP, Date ngayNhap, int soLuongTon, int soLuongBan, String moTaSP,
				double giaBan, double giaGoc, String chatLieu, Date ngaySX, String trangThai, String urlAnhSP,
				MultipartFile fileImage, NSX nsx, LoaiSP loaiSP) {
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
			this.fileImage = fileImage;
			this.nsx = nsx;
			this.loaiSP = loaiSP;
		}

		public SanPhamImg() {
			super();
		}
		
		
		
		
		
	}


