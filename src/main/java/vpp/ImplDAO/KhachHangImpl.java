package vpp.ImplDAO;


import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.KhachHangDAO;
import vpp.entity.KhachHang;
import vpp.entity.NhanVien;

@Repository
public class KhachHangImpl implements KhachHangDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveKhachHang(KhachHang khachHang) {
		 Session currentSession = sessionFactory.getCurrentSession();
		 currentSession.saveOrUpdate(khachHang);
		
	}
	
	public List<KhachHang> getTatCaKhachHang() {

		Session currentSession = sessionFactory.getCurrentSession();
		Query<KhachHang> theQuery = currentSession.createQuery("from KhachHang", KhachHang.class);
		List<KhachHang> khachHangs = theQuery.getResultList();

		return khachHangs;
	}

	@Override
	public KhachHang getKhachHangTheoID(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		KhachHang khachHang=currentSession.get(KhachHang.class, id);

		return khachHang;
	}

	@Override
	public void themHoacCapNhatKhachHang(KhachHang khachHang) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(khachHang);

	}

	@Override
	public void xoaKhachHang(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from KhachHang where id= "+ id +"");
		theQuery.executeUpdate();

	}


}
