package com.valne.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin/home/index")
	public String index() {
		return "/admin/index";
	}

}
