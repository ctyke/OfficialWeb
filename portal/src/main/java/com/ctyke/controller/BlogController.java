package com.ctyke.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ctyke.model.Article;
import com.ctyke.model.User;
import com.ctyke.service.ArticleService;
import com.ctyke.service.UserService;

@Controller
@RequestMapping("/blog/*")
public class BlogController {
	@Autowired
	UserService userService;
	
	@Autowired
	ArticleService articleService;
	
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String listBlog(ModelMap model) {

		List<Article> articleList = articleService.findAllArticle();
		System.out.println(articleList.size());
		model.addAttribute("articleList", articleList);
		return "/blog/blog_list";
	}
	
	@RequestMapping(value = { "/{id}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable Integer id, ModelMap model) {
		Article article = articleService.findById(id);
		User creator = userService.findById(article.getUserId());

		model.addAttribute("article", article);
		model.addAttribute("creator", creator);
		return "/blog/blog_post";
	}
}
