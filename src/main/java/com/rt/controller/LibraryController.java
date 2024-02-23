package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LibraryController {


	@RequestMapping("/")
	public String Login() {
		
		return "new_login";
	}
    @RequestMapping("/login")
	public String IndexPage() {
		return "Authontication/index";
	}

}
