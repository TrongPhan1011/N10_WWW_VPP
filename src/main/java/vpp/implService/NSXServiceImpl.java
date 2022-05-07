package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.dao.NSXDAO;
import vpp.service.NSXService;

@Service
public class NSXServiceImpl implements NSXService {
	@Autowired
	private NSXDAO nsxdao;
	
	
}
