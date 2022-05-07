package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.GioHangDAO;

@Repository
public class GioHangImpl implements GioHangDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
}
