package vpp.controller;

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

import vpp.user.VPPUser;

@Controller
@RequestMapping("/register")
public class RegistrationController {
	@Autowired
	private UserDetailsManager userDetailsManager;
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	private Logger logger = Logger.getLogger(getClass().getName());
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor editor = new StringTrimmerEditor(true);
			dataBinder.registerCustomEditor(String.class, editor);
		
	}
	
	@GetMapping("/registration")
	public String showLoginPage(Model model) {
		model.addAttribute("vppUser", new VPPUser() );
		return "registry-form";
	}
	
	@PostMapping("/processRegistration")
	public String processRegistration(@Valid @ModelAttribute("vppUser") VPPUser vppUser, 
			BindingResult theBindingResult, 
			Model theModel) {
		
		String userName = vppUser.getUserName();
		
		logger.info("Processing registration form for: " + userName);
		logger.info("Processing registration form for pass: " + vppUser.getPassword());
		
		// form validation
		if (theBindingResult.hasErrors()) {

			theModel.addAttribute("cusUser", new VPPUser());
			theModel.addAttribute("registrationError", "User name/password can not be empty.");

			logger.warning("User name/password can not be empty.");
			
			return "registry-form";	
		}
		
		boolean userExists = doesUserExist(userName);
		
		if (userExists) {
			theModel.addAttribute("vppUser", new VPPUser());
			theModel.addAttribute("registrationError", "User name already exists.");

			logger.warning("User name already exists.");
			
			return "registry-form";			
		}
		
		
		String encodedPassword = passwordEncoder.encode(vppUser.getPassword());

        encodedPassword = "{bcrypt}" + encodedPassword;
                 
        List<GrantedAuthority> authorities = AuthorityUtils.createAuthorityList("ROLE_CUSTOMER");

        User tempUser = new User(userName, encodedPassword, authorities);

        userDetailsManager.createUser(tempUser);		
		
        logger.info("Successfully created user: " + userName);
        
        return "registration-confirmation";		
		

	}
		private boolean doesUserExist(String userName) {
		
		logger.info("Checking if user exists: " + userName);
		
		// check the database if the user already exists
		boolean exists = userDetailsManager.userExists(userName);
		
		logger.info("User: " + userName + ", exists: " + exists);
		
		return exists;
	}
	
}
