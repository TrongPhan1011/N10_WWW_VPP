package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.CTGioHangDAO;

@Repository
public class CTGioHangImpl implements CTGioHangDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
}
