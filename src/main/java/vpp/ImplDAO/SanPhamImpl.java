package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.SanPhamDAO;

@Repository
public class SanPhamImpl implements SanPhamDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
}
