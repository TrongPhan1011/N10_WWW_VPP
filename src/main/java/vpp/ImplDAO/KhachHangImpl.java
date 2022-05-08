package vpp.ImplDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.KhachHangDAO;
import vpp.entity.KhachHang;

@Repository
public class KhachHangImpl implements KhachHangDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveKhachHang(KhachHang thekhachHang) {
		// TODO Auto-generated method stub
		 Session currentSession = sessionFactory.getCurrentSession();
		 currentSession.saveOrUpdate(thekhachHang);
		 
		
	}
	
	
}
