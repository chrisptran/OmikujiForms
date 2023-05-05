package com.chris.omikujiform.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class FormController {
	
	@GetMapping("/omikuji")
	public String form() {
		return "postForm/form.jsp";
	}
	
	@PostMapping("process/omikuji/show")
	public String processDisplayForm(@RequestParam("number") Integer number, @RequestParam("city") String city, @RequestParam("person") String person, @RequestParam("endeavor") String endeavor, @RequestParam("thing") String thing, @RequestParam("nice") String nice, HttpSession session) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("endeavor", endeavor);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);
		return "redirect:/omikuji/show";
	}
	
	@GetMapping("/omikuji/show")
	public String displayForm() {
		return "postForm/display.jsp";
	}

}
