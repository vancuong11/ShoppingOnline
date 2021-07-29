package com.valne.sevice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.valne.entity.Account;
import com.valne.sevice.SessionService;

@Service
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	SessionService session;

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {
		String uri = req.getRequestURI();
		Account user = session.get("user");// lay tu session
		String error = "";
		if (user == null) {// chua login
			error = "Please login!";
		}
//		 khong dung vai tro
		else if (!user.isRole() && uri.startsWith("/admin/")) {
			error = "Access denied!";
		}
		if(error.length()>0) {//co loi
			session.set("security-uri", uri);
			resp.sendRedirect("/account/login?error= "+error);
			return false;
		}
		return true;
	}
}

//boolean check = HashUtil.verify(pass, ac.getPassword());
//HttpSession ses = request.getSession();
//if (!check) {
//	ses.setAttribute("message", "User khong ton tai!");
//	return "redirect:/account/login";

//}
