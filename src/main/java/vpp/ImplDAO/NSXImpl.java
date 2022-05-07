package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.NSXDAO;

@Repository
public class NSXImpl implements NSXDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
}
