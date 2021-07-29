package com.valne.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.valne.dao.ProductDAO;
import com.valne.dao.ShoppingCart;
import com.valne.entity.Product;
import com.valne.sevice.SessionService;


@Controller
public class HomeController {
	@Autowired
	ProductDAO dao;
	@Autowired
	ShoppingCart cart;
	@Autowired
	SessionService session;
	@RequestMapping("/home")
	public String index(Model model,
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer>p
			) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page",page);
		model.addAttribute("list",dao.findName());
		model.addAttribute("SS",dao.findNameSS());
//		model.addAttribute("p",p.orElse(0));
		model.addAttribute("cart",cart);
		return "home/home";
	}
	
	@RequestMapping("/products")
	public String product(Model model,
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page",page);
		model.addAttribute("list",dao.findName());
		model.addAttribute("SS",dao.findNameSS());
//		model.addAttribute("p",p.orElse(0));
		model.addAttribute("cart",cart);
		return "home/product";
	}
	
	@RequestMapping("/products/laptop")
	public String laptop(Model model,
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dao.Laptop("%"+kwords+"%", pageable);
		model.addAttribute("page",page);
		model.addAttribute("list",dao.findName());
		model.addAttribute("SS",dao.findNameSS());
//		model.addAttribute("p",p.orElse(0));
		model.addAttribute("cart",cart);
		
		return "home/laptop";
	}
	
	@RequestMapping("/products/phukien")
	public String phukien(Model model,
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dao.Phukien("%"+kwords+"%", pageable);
		model.addAttribute("page",page);
		model.addAttribute("list",dao.findName());
		model.addAttribute("SS",dao.findNameSS());
//		model.addAttribute("p",p.orElse(0));
		model.addAttribute("cart",cart);
		
		return "home/link";
	}
}
