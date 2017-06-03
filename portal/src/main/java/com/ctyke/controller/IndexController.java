package com.ctyke.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ctyke.model.User;

@Controller
@RequestMapping(value = { "/", "" })
public class IndexController {
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String userLogin(User user, ModelMap model, HttpServletRequest request) {

		return "/index";
	}
	
}
