package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.LoaiSPDAO;

@Repository
public class LoaiSPImpl implements LoaiSPDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
}
