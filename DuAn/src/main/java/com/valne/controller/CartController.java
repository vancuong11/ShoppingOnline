package com.valne.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.valne.entity.Account;
import com.valne.entity.Item;
import com.valne.entity.Order;
import com.valne.entity.OrderDetail;
import com.valne.sevice.ParamService;
import com.valne.sevice.SessionService;

@Controller
public class CartController {
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

	@RequestMapping("/cart/view")
	public String index(Model model) {
		model.addAttribute("cart", cart);
		return "home/cart";
	}

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		
		return "redirect:/cart/view"; // hiển thị giỏ hàng
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/cart/view";
	}

	@RequestMapping("/cart/update/{id}")
	public String update(@PathVariable("id") Integer id, @RequestParam("qty") Integer qty) {
		cart.update(id, qty);
		return "redirect:/cart/view";
	}

	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/cart/view";
	}

	@RequestMapping("/check/out")
	public String checkout() {
		// lay username dang nhap
		String username = session.get("username");
		System.out.println(username);
		if (username == null) {
			return "redirect:/account/login";
		}
		Account account = null;
		// set username voi DB
		if (accountDao.findById(username).isPresent()) {
			// lay acc dau
			account = accountDao.findById(username).get();
			Order order = new Order();
			order.setAccount(account);
			order.setAddress(paramDao.getString("address", ""));
			order.setPhone(paramDao.getInt("phone", 84 ));
			order.setCreateDate(new Date());
			// tao list orderdetails
			List<OrderDetail> orderdetails = new ArrayList<OrderDetail>();
			// duyet tat ca trong gio hang
			for (Item t : cart.getItems()) {
				OrderDetail od = new OrderDetail();
				od.setOrder(order);
				dao.findById(t.getId()).ifPresent(p -> {
					od.setProduct(p);
				});
				od.setPrice(t.getPrice());
				od.setQuantity(t.getQty());
				orderdetails.add(od);
			}
			order.setOrderdetails(orderdetails);
			orderDao.save(order);// luu order vao dada
			for (OrderDetail dt : orderdetails) {
				orderdetailDao.save(dt);
			}
			cart.clear();
		}
		return "redirect:/cart/view";
	}
}
