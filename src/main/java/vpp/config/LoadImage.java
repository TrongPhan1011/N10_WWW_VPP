package vpp.config;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/sp/*")
public class LoadImage  {
//
//	/**
//	 * 
//	 */
//	
//	
//	public static final long serialVersionUID = 3911487499462625506L;
//
//	private String imagePath;
//	@Override
//	public void init() throws ServletException {
//		imagePath = System.getProperty("Catalina.home") + File.separator +"resource/assets/img";
//	}
//
//
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String requestImage = req.getPathInfo();
//		if(requestImage == null) {
//			resp.sendError(HttpServletResponse.SC_NOT_FOUND);
//			return;
//		}
//		File image = new File(imagePath,URLDecoder.decode(requestImage,"UTF-8"));
//		
//		String contentType = getServletContext().getMimeType(image.getName());	
//		if(contentType== null ||!contentType.startsWith("sp")) {
//			return;
//		}
//		resp.reset();
//		resp.setContentType(contentType);
//		resp.setHeader("Content-Length", String.valueOf(image.length()));
//		Files.copy(image.toPath(), resp.getOutputStream());
//		
//	}
//	
	
	

}
