package vpp.ImplDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.SanPhamDAO;
import vpp.entity.SanPham;

@Repository
public class SanPhamImpl implements SanPhamDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<SanPham> getTatCaSanPham() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<SanPham> theQuery = currentSession.createQuery("from SanPham", SanPham.class);
		List<SanPham> sanPhams = theQuery.getResultList();

		return sanPhams;
	}

	public SanPham getSanPhamTheoID(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		SanPham tempSanPham = currentSession.get(SanPham.class, id);
		return tempSanPham;
		
		
	}

	@Override
	public List<SanPham> getSPGiamDanTheoDaBan() {
		Session session = sessionFactory.getCurrentSession();


		List<SanPham> ls = session.createNativeQuery("select * from sanPham order by soLuongBan desc",SanPham.class).getResultList();
		return ls;
	}

	@Override
	public List<SanPham> getSPTheoLoai(String tenLoai) {
		Session session = sessionFactory.getCurrentSession();
		

		List<SanPham> ls = session.createNativeQuery("SELECT sanPham.* FROM sanPham  join loaiSP  on sanPham.idLoai = loaiSP.id where tenLoai = '"+tenLoai+"'",SanPham.class).getResultList();
		return ls;
	}
	
	@Override
	public List<SanPham> getSanPhamTheoGioHang(int id) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> sanPhams = session.createNativeQuery("SELECT sanPham.* FROM sanpham  join ctgiohang  on sanPham.id = ctgiohang.idSP where idGioHang = '"+id+"'",SanPham.class).getResultList();
		
		return sanPhams;
	}
	
	@Override
	public List<SanPham> getSanPhamTimKiem(String tenSP){
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> sanPhams = session.createNativeQuery("select * from sanpham where tenSP like '%"+tenSP+"%'",SanPham.class).getResultList();
		return sanPhams;
	
	}

	@Override
	public List<SanPham> getSPTheoNSX(String tenNSX) {
		Session session = sessionFactory.getCurrentSession();

		List<SanPham> ls = session.createNativeQuery("SELECT sanPham.* FROM sanPham  join nsx  on sanPham.idLoai = nsx.id where tenNSX = '"+ tenNSX +"'",SanPham.class).getResultList();
		return ls;
	}

	@Override
	public List<SanPham> getSPTheoTenTangDan() {
		Session session = sessionFactory.getCurrentSession();

		List<SanPham> ls = session.createNativeQuery("SELECT sanPham.* FROM sanPham  ORDER BY tenSP ASC" ,SanPham.class).getResultList();
		return ls;
	}

	@Override
	public List<SanPham> getSPTheoGiaTangDan() {
		Session session = sessionFactory.getCurrentSession();

		List<SanPham> ls = session.createNativeQuery("SELECT sanPham.* FROM sanPham  ORDER BY giaBan ASC" ,SanPham.class).getResultList();
		return ls;
	}

	@Override
	public List<SanPham> getSPTheoGiaGiamDan() {
		Session session = sessionFactory.getCurrentSession();

		List<SanPham> ls = session.createNativeQuery("SELECT sanPham.* FROM sanPham  ORDER BY giaBan DESC" ,SanPham.class).getResultList();
		return ls;
	}

	@Override
	public List<SanPham> getSPMoi() {
		
		return null;
	}

}
