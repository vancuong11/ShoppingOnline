package com.valne.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.valne.dao.OrderDAO;
import com.valne.entity.Order;
import com.valne.entity.OrderDetail;

@Controller
public class OrderController {
	@Autowired
	OrderDAO dao;
	@RequestMapping("/orders")
	public String index(Model model) {
		List<Order> od = dao.findAll();
		model.addAttribute("items", od);
		return "admin/orders";
	}
	@RequestMapping("/orders/delete/{id}")
	public String delete(Order item, @PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/orders";
	}
}
