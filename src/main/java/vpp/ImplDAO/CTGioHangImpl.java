package vpp.ImplDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.CTGioHangDAO;
import vpp.entity.CTGioHang;
import vpp.entity.GioHang;

@Repository
public class CTGioHangImpl implements CTGioHangDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public  CTGioHang getCtGioHang(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		CTGioHang ctGioHang = currentSession.createNativeQuery("Select * from vpp_web.ctgiohang where idGioHang ="+ id +"", CTGioHang.class).getSingleResult();
		
		return ctGioHang;
		
	}
}
