package vpp.implService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vpp.dao.NSXDAO;
import vpp.entity.NSX;
import vpp.service.NSXService;

@Service
public class NSXServiceImpl implements NSXService {
	@Autowired
	private NSXDAO nsxDao;

	@Override
	@Transactional
	public List<NSX> getTatCaNSX() {
		return nsxDao.getTatCaNSX();
	}
	
	
}
