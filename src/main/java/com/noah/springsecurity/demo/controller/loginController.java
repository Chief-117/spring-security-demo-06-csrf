package com.noah.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class loginController {
	@GetMapping("/showLogin")
	public String showLogin() {
		return "Login2";
	}
}
