package com.valne.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.valne.dao.AccountDAO;
import com.valne.entity.Account;
import com.valne.sevice.HashUtil;
import com.valne.sevice.SessionService;

@Controller
public class LoginController {
	@Autowired
	AccountDAO dao;

	@Autowired
	SessionService session;

//	login
	@GetMapping("/account/login")
	public String login() {
		return "home/login";
	}

	@PostMapping("/account/login")
	public String login(Model model, @RequestParam("username") String user, @RequestParam("password") String pass,
			@ModelAttribute("lg") @Validated Account ac) {
		try {
			Account us = dao.getOne(user);
			if (!us.getPassword().equals(pass) && !(HashUtil.verify(pass, us.getPassword()))) {
				model.addAttribute("message", "Invalid password!");
			}
			String uri = session.get("security-uri");
			if (uri != null) {
				return "redirect:" + uri;
			} else {
				model.addAttribute("message", "Login succeed!");
				session.set("user", us.getUsername());
				session.set("password",us.getPassword());
				session.set("full", us.getFullname());
				session.set("email", us.getEmail());
				session.set("role", us.isRole());
				System.out.println(us.isRole());
				return "redirect:/products";
			}
		} catch (Exception e) {
			model.addAttribute("message", "Invalid Username!");
		}
		return "home/login";
	}
//	register
	@GetMapping("/account/register")
	public String register() {
		return "home/register";
	}
	
	@PostMapping("/register")
	public String register(Model model, @RequestParam("username") String user, @RequestParam("password") String pass,
			@RequestParam("fullname") String fullname, @RequestParam("email") String email) {
		Account account = new Account();
		account.setUsername(user);
		account.setPassword(pass);
		account.setFullname(fullname);
		account.setEmail(email);
		account.setRole(false);
		account.setActived(true);
		account.setMhpw(HashUtil.hash(pass));
		dao.save(account);
//		System.out.println(HashUtil.hash(pass)+"asds");
		model.addAttribute("message", "Dang ki Fail!");
		return "redirect:/account/register";
	}
}
