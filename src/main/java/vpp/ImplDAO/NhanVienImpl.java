package vpp.ImplDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.stereotype.Repository;

import vpp.dao.NhanVienDAO;
import vpp.entity.NhanVien;

@Repository
public class NhanVienImpl implements NhanVienDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<NhanVien> getAllNV() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<NhanVien> theQuery = currentSession.createQuery("from NhanVien",
				NhanVien.class);
		List<NhanVien> nhanvien = theQuery.getResultList();

		return nhanvien;
	}

	@Override
	public void saveNV(NhanVien nhanVien) {
		Session currentSession = sessionFactory.getCurrentSession();

		currentSession.saveOrUpdate(nhanVien);

	}

	@Override
	public void deleteNV(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql = "UPDATE vpp_web.nhanvien set trangThai = 'Đã nghỉ' WHERE id = :employee_id";
		Query query = currentSession.createNativeQuery(hql);

		query.setParameter("employee_id", id);
		query.executeUpdate();

	}

	@Override
	public void updateNV(NhanVien nhanVien, int id,String emailcu) {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql = "UPDATE vpp_web.nhanvien set tenNV = '" + nhanVien.getTenNV() + "',email='" + nhanVien.getEmail()
				+ "',sdt='" + nhanVien.getSdt() + "',gioiTinh='" + nhanVien.getGioiTinh() + "',ngaySinh='"
				+ nhanVien.getNgaySinh() + "',diaChi='" + nhanVien.getDiaChi() 
				+ "' WHERE id = :employee_id";
		Query query = currentSession.createNativeQuery(hql);
		query.setParameter("employee_id", id);

		String sql2 = "UPDATE vpp_web_security.users set username = '" + nhanVien.getEmail()
				+ "' WHERE username = :email";
		Query query3 = currentSession.createNativeQuery(sql2);
		query3.setParameter("email", emailcu);

		query.executeUpdate();

		query3.executeUpdate();

	}

	@Override
	public NhanVien getNVId(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		// now retrieve/read from database using the primary key
		NhanVien nv = currentSession.get(NhanVien.class, id);
		return nv;
	}

	@Override
	public NhanVien getNVEmail(String email) {
		Session currentSession = sessionFactory.getCurrentSession();
		// now retrieve/read from database using the primary key
		Query<NhanVien> theQuery = currentSession.createNativeQuery("select * from vpp_web.NhanVien where  email='"+email+"'",
				NhanVien.class);
		NhanVien nhanvien =  theQuery.getSingleResult();
		return nhanvien;
	}

	@Override
	public void updatePass(int id, String pass) {
		System.out.println("id:"+id);
		Session currentSession = sessionFactory.getCurrentSession();
		NhanVien nv = currentSession.get(NhanVien.class, id);
		String sql2 = "UPDATE vpp_web_security.users set  password= '" + pass
		+ "' WHERE username = :email";
		Query query3 = currentSession.createNativeQuery(sql2);
		query3.setParameter("email", nv.getEmail());
		query3.executeUpdate();
		
	}

	@Override
	public void updateNVadmin(NhanVien nhanVien, int id, String emailcu) {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql = "UPDATE vpp_web.nhanvien set tenNV = '" + nhanVien.getTenNV() + "',email='" + nhanVien.getEmail()
				+ "',sdt='" + nhanVien.getSdt() + "',gioiTinh='" + nhanVien.getGioiTinh() + "',ngaySinh='"
				+ nhanVien.getNgaySinh() + "',diaChi='" + nhanVien.getDiaChi()+"',chucVu='"+nhanVien.getChucVu() 
				+ "' WHERE id = :employee_id";
		Query query = currentSession.createNativeQuery(hql);
		query.setParameter("employee_id", id);

		String sql2 = "UPDATE vpp_web_security.users set username = '" + nhanVien.getEmail()
				+ "' WHERE username = :email";
		Query query3 = currentSession.createNativeQuery(sql2);
		query3.setParameter("email", emailcu);

		query.executeUpdate();

		query3.executeUpdate();
		
	}

	

}
