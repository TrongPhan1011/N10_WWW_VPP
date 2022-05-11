package vpp.ImplDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.NSXDAO;
import vpp.entity.NSX;

@Repository
public class NSXImpl implements NSXDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<NSX> getTatCaNSX() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<NSX> theQuery = currentSession.createQuery("from NSX", NSX.class);
		List<NSX> nsxs = theQuery.getResultList();

		return nsxs;
	}
	
	
}
