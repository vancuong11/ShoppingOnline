package com.valne.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.valne.dao.OrderDetailDAO;
import com.valne.entity.OrderDetail;

@Controller
public class OrderDetailsController {
	@Autowired
	OrderDetailDAO dao;
	@RequestMapping("/orderdetail/index")
	public String index(Model model) {
		List<OrderDetail> detail = dao.findAll();
		model.addAttribute("items",detail);
		return "admin/orderdetails";
	}

}
