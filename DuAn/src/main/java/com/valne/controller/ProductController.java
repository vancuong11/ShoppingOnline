package com.valne.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.valne.dao.ProductDAO;
import com.valne.entity.Product;
import com.valne.sevice.ParamService;


@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	@Autowired
	ParamService param;
	@RequestMapping("/product/index")
	public String index(Model model,@RequestParam("p") Optional<Integer> p) {
		Product cate = new Product();
		model.addAttribute("item", cate);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page",page);
		return "admin/products";
		// return "category/index2"; // giao dien dep
	}

	// hàm 2
	@RequestMapping("/product/edit/{id}")
	public String edit(Model model , @PathVariable("id") Integer id
			,@RequestParam("p") Optional<Integer> p) {
		Product item = dao.findById(id).get();
		model.addAttribute("item",item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page",page);
		return "admin/products";
	}
	//	@ModelAttribute("items")
	//	public List<Product> item (){
	//		return dao.findAll();
	//	}
	
	//,@RequestParam("img") MultipartFile file
	// hàm 3
	@RequestMapping("/product/create")
	public String create(Product item,@RequestParam("img") MultipartFile file) {	
		param.save(file,"images");
		item.setImage(file.getOriginalFilename());
		item.setAvailable(true);
//		Product cate = new Product(item.getId(), item.getName(), param.save(item.getImage()), item.getPrice(), item.getCreateDate(), true, item.getCategory(), item.getLoai());
		dao.save(item);
		return "redirect:/product/index";
	}

	// hàm 4 XEM LẠI HÀM CỨ TẠO MỚI RA
	@RequestMapping("/product/update")
	public String update(Product item,@RequestParam("img") MultipartFile file) {
		if (file != null) {
			param.save(file, "images");
			item.setImage(file.getOriginalFilename());
		}else {
			item.setImage(item.getImage());
		}
		item.setAvailable(true);
		dao.save(item);
		return "redirect:/product/edit/" + item.getId();
	}

	// hàm 5
	@RequestMapping("/product/delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/product/index";
	}
	@RequestMapping("/product/clear")
	public String clear() {
		return "redirect:/product/index" ;
	}
}
