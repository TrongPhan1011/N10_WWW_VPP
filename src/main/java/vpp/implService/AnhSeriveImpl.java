package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.dao.AnhDAO;
import vpp.service.AnhService;

@Service
public class AnhSeriveImpl implements AnhService {
	@Autowired
	private AnhDAO anhDAO;
	
	

}
