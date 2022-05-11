package vpp.ImplDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.SanPhamDAO;
import vpp.entity.LoaiSP;
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
	public void saveSanPham(SanPham sanPham) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(sanPham);
		
	}

	@Override
	public void deleteSanPham(int id) {
		Session session = sessionFactory.getCurrentSession();
		SanPham s = session.get(SanPham.class, id);
		session.delete(s);
	}

	@Override
	public SanPham getSanPhamTheoLoaiNSX(String tenSP, int idNSX, int idLoai) {
		Session session = sessionFactory.getCurrentSession();


		SanPham sp = session.createNativeQuery("SELECT * FROM sanPham where tenSP = '"+tenSP+"' and idLoai ="+idLoai+" and idNSX = "+idNSX+";",SanPham.class).getSingleResult();
		
		return sp;
	}

	@Override
	public List<SanPham> getSPTheoTenTimKiem(String tenSP) {
		
		Session session = sessionFactory.getCurrentSession();
		

		List<SanPham> ls = session.createNativeQuery("SELECT sanPham.* FROM sanPham   where tenSP like  '%"+tenSP+"%'",SanPham.class).getResultList();
		return ls;
	}

}
