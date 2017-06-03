package com.ctyke.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ctyke.model.User;
import com.ctyke.service.UserService;

@Controller
@RequestMapping("/admin/login/")
public class LoginController {

	@Autowired
	UserService userService;
	
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String defaultPage(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "/admin/login";
	}

	@RequestMapping(value = { "/" }, method = RequestMethod.POST)
	public String userLogin(User user, ModelMap model, HttpServletRequest request) {

		if (!userService.isValidUser(user.getUsername(), user.getPassword())) {
			return "/admin/login";
		}

		user = userService.findUserByUsername(user.getUsername());
		request.getSession().setAttribute("user",user);

		return "redirect:/admin/acc/";
	}
	
}
