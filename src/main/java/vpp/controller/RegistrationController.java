package vpp.controller;


import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.logging.Logger;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import vpp.dao.KhachHangDAO;
import vpp.entity.KhachHang;
import vpp.service.KhachHangService;
import vpp.user.VPPUser;

@Controller
@RequestMapping("/dangky")
public class RegistrationController {
	@Autowired
	
	private KhachHangService khachHangService;
	@Autowired
	private UserDetailsManager userDetailsManager;
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	private Logger logger = Logger.getLogger(getClass().getName());
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor editor = new StringTrimmerEditor(true);
			dataBinder.registerCustomEditor(String.class, editor);
		
	}
	
	@GetMapping("/")
	public String showRegisterPage(Model model) {
		model.addAttribute("vppUser", new VPPUser() );
		return "dang-ky";
	}
	
//	@PostMapping("/processRegistration")
//	public String processRegistration(@Valid @ModelAttribute("vppUser") VPPUser vppUser, 
//			BindingResult theBindingResult, 
//			Model theModel) {
//		
//		String userName = vppUser.getUserName();
//		
//		
//		
//		boolean userExists = doesUserExist(userName);
//		
//		if (userExists) {
//			theModel.addAttribute("vppUser", new VPPUser());
//			theModel.addAttribute("registrationError", "User name already exists.");
//
//			logger.warning("User name already exists.");
//			
//			return "dang-ky";			
//		}
//		
//		
////		String encodedPassword = passwordEncoder.encode(vppUser.getPassword());
////
////        encodedPassword = "{bcrypt}" + encodedPassword;
//                 
//        List<GrantedAuthority> authorities = AuthorityUtils.createAuthorityList("ROLE_CUSTOMER");
//
//        User tempUser = new User(userName, vppUser.getPassword(), authorities);
//        
//        userDetailsManager.createUser(tempUser);		
//		
//        logger.info("Successfully created user: " + userName);
//        
//        return "login";		
//		
//
//	}
		private boolean doesUserExist(String userName) {
		
	
		
		// check the database if the user already exists
		boolean exists = userDetailsManager.userExists(userName);
		
		
		
		return exists;
	}
		
		@PostMapping("/dangKyKH")
		public String saveKhachHang(@ModelAttribute("vppUser") KhachHang khachHang,BindingResult theBindingResult, 
				Model theModel) {
			
			String userName = khachHang.getEmail();
			String password = khachHang.getTrangThai();
			String encodedPassword = passwordEncoder.encode(password);
			encodedPassword = "{bcrypt}" + encodedPassword;
			VPPUser vppUser = new VPPUser(userName,encodedPassword);
			
			
			khachHang.setTrangThai("Binh thuong");
			long millis=System.currentTimeMillis();
			java.sql.Date date=new java.sql.Date(millis);
			System.out.println(date);
			khachHang.setNgayThamGia(date);
			
			boolean userExists = doesUserExist(userName);
			if (userExists) {
				theModel.addAttribute("vppUser", new VPPUser());
				theModel.addAttribute("registrationError", "User name already exists.");

				logger.warning("User name already exists.");
				
				return "dang-ky";			
			}
			
			 List<GrantedAuthority> authorities = AuthorityUtils.createAuthorityList("ROLE_CUSTOMER");
			 

		
		        User tempUser = new User(userName, vppUser.getPassword(), authorities);
		        
		        userDetailsManager.createUser(tempUser);
		        
		        KhachHang kh = converUTF8(khachHang);
				
		        	
			khachHangService.saveKhachHang(kh);
			return "login";
		}

		private KhachHang converUTF8(KhachHang khachHang) {
			// TODO Auto-generated method stub
			String ten = khachHang.getTenKH();
			String diaChi= khachHang.getDiaChi();
			try {
				String tenUTF8 = new String(ten.getBytes("ISO-8859-1"), "UTF8");
				String diaChiUTF8 = new String(diaChi.getBytes("ISO-8859-1"), "UTF8");
				khachHang.setTenKH(tenUTF8);
				khachHang.setDiaChi(diaChiUTF8);
			}catch (UnsupportedEncodingException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return khachHang;
		}

	
}
