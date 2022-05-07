package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.DonHangDAO;

@Repository
public class DonHangImpl implements DonHangDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
}
