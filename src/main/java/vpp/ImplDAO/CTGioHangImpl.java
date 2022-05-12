package vpp.ImplDAO;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.CTGioHangDAO;
import vpp.entity.CTGioHang;
import vpp.entity.GioHang;
import vpp.entity.SanPham;
import vpp.service.SanPhamService;

@Repository
public class CTGioHangImpl implements CTGioHangDAO {
	@Autowired
	private SessionFactory sessionFactory;
	private SanPhamService sanPhamService;
	
	public  List<CTGioHang> getCtGioHang(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		List<CTGioHang> ctGioHang = currentSession.createNativeQuery("Select idGioHang, idSP, soLuong from vpp_web.ctgiohang join sanpham  on sanPham.id = ctgiohang.idSP where idGioHang ="+ id +"", CTGioHang.class).getResultList();
		
		return ctGioHang;
		
	}
	
	
	public int soLuongSanPham(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		List<SanPham> sanPhams = currentSession.createNativeQuery("SELECT sanPham.* FROM sanpham  join ctgiohang  on sanPham.id = ctgiohang.idSP where idGioHang = '"+id+"'",SanPham.class).getResultList();
		int demSanPham = 0;
		for(SanPham s : sanPhams) {
			demSanPham+=1;
		}
		
		
		return demSanPham;
	}
	
	public void addCart(CTGioHang ctGioHang) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(ctGioHang);
	}
	
	public void deleteCart(CTGioHang  ctGH) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.delete(ctGH);
	}
}
