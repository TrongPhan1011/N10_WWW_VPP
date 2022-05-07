package vpp.ImplDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.NhanVienDAO;

@Repository
public class NhanVienImpl implements NhanVienDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
}
