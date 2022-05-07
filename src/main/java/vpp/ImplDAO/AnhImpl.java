package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.AnhDAO;

@Repository
public class AnhImpl implements AnhDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	

}
