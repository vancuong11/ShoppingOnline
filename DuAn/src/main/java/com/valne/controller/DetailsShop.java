package com.valne.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.valne.dao.AccountDAO;
import com.valne.dao.OrderDAO;
import com.valne.dao.OrderDetailDAO;
import com.valne.dao.ProductDAO;
import com.valne.dao.ShoppingCart;
import com.valne.entity.Product;
import com.valne.sevice.ParamService;
import com.valne.sevice.SessionService;

@Controller
public class DetailsShop {
	@Autowired
	ProductDAO dao;
	@Autowired
	ShoppingCart cart;
	@Autowired
	SessionService session;
	@Autowired
	AccountDAO accountDao;
	@Autowired
	OrderDAO orderDao;
	@Autowired
	OrderDetailDAO orderdetailDao;
	@Autowired
	ParamService paramDao;
	@RequestMapping("/detailshop")
	public String detail(Model model){
		model.addAttribute("cart",cart);
		return "home/detail";
	}
	
	@RequestMapping("/detailshop/{id}")
	public String view(Model model, @PathVariable("id") Integer id
			,@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 3);
		Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page",page);
		model.addAttribute("SS",dao.findName());
		model.addAttribute("SS",dao.findNameSS());
		model.addAttribute("p",p.orElse(0));
		Product list = dao.findById(id).get();
		model.addAttribute("list",list);
		return "home/detail";
	}
}
