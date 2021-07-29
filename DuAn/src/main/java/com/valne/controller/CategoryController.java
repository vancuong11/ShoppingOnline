package com.valne.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.valne.dao.CategoryDAO;
import com.valne.entity.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO  dao; // làm việc với bảng Categories

	// hàm 1
	@RequestMapping("/category/index")
	public String index(Model model) {
		Category cate = new Category();
		model.addAttribute("item", cate);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/categories";
		// return "category/index2"; // giao dien dep
	}

	// hàm 2
	@RequestMapping("/category/edit/{id}")
	public String edit(Model model , @PathVariable("id") String id) {
		Category item = dao.findById(id).get();
		model.addAttribute("item",item);
		List<Category> items = dao.findAll();
		model.addAttribute("items",items);
		return "admin/categories";
	}

	// hàm 3
	@RequestMapping("/category/create")
	public String create(Category item,
			@RequestParam("name") String name) {	
		item.setName(name);
		dao.save(item);
		return "redirect:/category/index";
	}

	// hàm 4
	@RequestMapping("/category/update")
	public String update(Category item) {
		dao.save(item);
		return "redirect:/category/index";
	}

	// hàm 5
	@RequestMapping("/category/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/category/index";
	}
	@RequestMapping("/category/clear")
	public String clear() {
		return "redirect:/category/index" ;
	}
}
