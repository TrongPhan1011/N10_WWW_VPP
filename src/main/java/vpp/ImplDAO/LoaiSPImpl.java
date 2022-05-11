package vpp.ImplDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vpp.dao.LoaiSPDAO;
import vpp.entity.LoaiSP;

@Repository
public class LoaiSPImpl implements LoaiSPDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<LoaiSP> getAllLoai() {
		Session session = sessionFactory.getCurrentSession();
		
		
		List<LoaiSP> ls = session.createNativeQuery("select * from loaiSP").getResultList();
		return ls;
	}
	
	
}
