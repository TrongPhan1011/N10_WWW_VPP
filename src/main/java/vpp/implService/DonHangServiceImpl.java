package vpp.implService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vpp.service.DonHangSerivce;

@Service
public class DonHangServiceImpl implements DonHangSerivce {
	@Autowired
	private DonHangSerivce donHangSerivce;
	
	
}
