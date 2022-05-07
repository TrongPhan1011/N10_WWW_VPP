package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.CTDonHangDAO;

@Repository
public class CTDonHangImpl implements CTDonHangDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	

}
