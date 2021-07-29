package com.valne.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.valne.dao.AccountDAO;
import com.valne.dao.OrderDAO;
import com.valne.dao.OrderDetailDAO;
import com.valne.dao.ProductDAO;
import com.valne.dao.ShoppingCart;
import com.valne.entity.Account;
import com.valne.entity.Order;
import com.valne.entity.OrderDetail;
import com.valne.sevice.HashUtil;
import com.valne.sevice.ParamService;
import com.valne.sevice.SessionService;

@Controller
public class Profile {
	@Autowired
	ShoppingCart cart;

	@Autowired
	AccountDAO accountDao;
	
	@Autowired
	OrderDetailDAO dao;
	
	@Autowired
	SessionService session;
		@RequestMapping("/myaccount")
		public String account(Model model) {
			String p = session.get("username");
			List<OrderDetail> list = dao.findAllUser(p);
			model.addAttribute("cart",cart);
			model.addAttribute("list",list);
			return "home/personal";
		}
	
	@RequestMapping("/updateAccount")
	public String update(Model model,@RequestParam("username") String user,@RequestParam("fullname") String fullname,
			@RequestParam("password") String password,
			@RequestParam("email") String email) {
		Account account = new Account();
		account.setPassword(password);
		account.setUsername(user);
		account.setFullname(fullname);
		account.setEmail(email);
		account.setRole(false);
		account.setActived(true);
		account.setMhpw(HashUtil.hash(password));
		accountDao.save(account);
		model.addAttribute("message","Update Succsess!");
		return "redirect:/myaccount";
	}
	
	@RequestMapping("/detele/orders/{id}")
	public String delete(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/myaccount";
	}
	
}
