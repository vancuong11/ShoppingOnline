package com.valne.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.valne.dao.AccountDAO;
import com.valne.entity.Account;
import com.valne.entity.Category;
import com.valne.sevice.ParamService;


@Controller
public class AccountController {
	@Autowired
	AccountDAO dao;
	@Autowired
	ParamService param;
	@RequestMapping("/account/index")
	public String index(Model model) {
		Account cate = new Account();
		model.addAttribute("item", cate);
//		List<Account> items = dao.findAll();
//		model.addAttribute("items", items);
		return "admin/account";
		// return "category/index2"; // giao dien dep
	}

	// hàm 2
	@RequestMapping("/account/edit/{username}")
	public String edit(Model model , @PathVariable("username") String username
			) {
		Account item = dao.findById(username).get();
		model.addAttribute("item",item);
//		List<Product> items = dao.findAll();
//		model.addAttribute("items",items);
		return "admin/account";
	}
	@ModelAttribute("items")
	public List<Account> item (){
		return dao.findAll();
	}
	
	//,@RequestParam("img") MultipartFile file
	// hàm 3
	@RequestMapping("/account/create")
	public String create(Account item) {	
//		item.setAvailable(true);
//		Product cate = new Product(item.getId(), item.getName(), param.save(item.getImage()), item.getPrice(), item.getCreateDate(), true, item.getCategory(), item.getLoai());
		item.setActived(true);	
		dao.save(item);
		return "redirect:/account/index";
	}

	// hàm 4 XEM LẠI HÀM CỨ TẠO MỚI RA
	@RequestMapping("/account/update")
	public String update(Account item) {
		dao.save(item);
		return "redirect:/account/index";
	}

	// hàm 5
	@RequestMapping("/account/delete/{username}")
	public String delete(@PathVariable("username") String username) {
		dao.deleteById(username);
		return "redirect:/account/index";
	}
	@RequestMapping("/account/clear")
	public String clear() {
		return "redirect:/account/index" ;
	}
	
}
