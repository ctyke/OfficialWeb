package com.ctyke.controller;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.ctyke.model.User;
import com.ctyke.service.UserService;


@Controller
@RequestMapping("/admin/acc/*")
public class UserController {
	@Autowired
	UserService userService;

	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String listUser(ModelMap model) {

		List<User> userlist = userService.findAllUser();
		model.addAttribute("userlist", userlist);
		return "/admin/user_list";
	}

	@RequestMapping(value = { "add" }, method = RequestMethod.GET)
	public String saveUser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "/admin/user_add";
	}

	@RequestMapping(value = { "add" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "/admin/user_add";
		}

		if (!userService.isUsernameUnique(user.getUsername())) {
			FieldError ssnError = new FieldError("user", "ssn", messageSource.getMessage("non.unique.ssn",
					new String[] { user.getUsername() }, Locale.getDefault()));
			result.addError(ssnError);
			return "/admin/user_add";
		}

		userService.saveUser(user);

		model.addAttribute("success", "User " + user.getName() + " registered successfully");
		return "redirect:/admin/acc/";
	}

	@RequestMapping(value = { "edit-{id}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable Integer id, ModelMap model) {
		User user = userService.findById(id);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		return "/admin/user_edit";
	}

	@RequestMapping(value = { "edit-{id}" }, method = RequestMethod.POST)
	public String updateUser(User user, ModelMap model, @PathVariable Integer id) {

		User oldUser = userService.findById(id);
		user.setUsername(oldUser.getUsername());

		userService.updateUser(user);

		model.addAttribute("success", "User " + user.getName() + " updated successfully");
		return "redirect:/admin/acc/";
	}

	@RequestMapping(value = { "delete-{id}" }, method = RequestMethod.GET)
	public String deleteEmployee(@PathVariable int id) {
		userService.deleteUserById(id);
		return "redirect:/admin/acc/";
	}

	

}
