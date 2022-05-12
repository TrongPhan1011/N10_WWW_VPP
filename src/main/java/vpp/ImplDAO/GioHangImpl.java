	package vpp.ImplDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import vpp.dao.GioHangDAO;
import vpp.entity.GioHang;

@Repository
public class GioHangImpl implements GioHangDAO {
	@Autowired
	private SessionFactory sessionFactory;
	//private KhachHangDAO 
	
	@Override
	public GioHang getGioHangTheoKhachHang(int id) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		GioHang gioHang = currentSession.createNativeQuery("Select * from vpp_web.giohang where idKH = "+ id +"", GioHang.class).getSingleResult();

		return gioHang;
	}

	@Override
	public void saveGiohang(GioHang giohang) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(giohang);
		
	}
	
	
}
