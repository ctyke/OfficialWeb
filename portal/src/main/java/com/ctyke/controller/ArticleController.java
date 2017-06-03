package com.ctyke.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ctyke.model.User;
import com.ctyke.model.Article;
import com.ctyke.service.ArticleService;

@Controller
@RequestMapping("/admin/blog/*")
public class ArticleController {
	@Autowired
	ArticleService articleService;

	@Autowired
	MessageSource messageSource;
	
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String listArticle(ModelMap model) {

		List<Article> articleList = articleService.findAllArticle();
		System.out.println(articleList.size());
		model.addAttribute("articleList", articleList);
		return "/admin/article_list";
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public String saveBlog(ModelMap model) {
		Article article = new Article();
		model.addAttribute("article", article);
		return "/admin/article_add";
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.POST)
	public String saveBlog(Article article, ModelMap model, HttpServletRequest request) {
		article.setUserId(((User)request.getSession().getAttribute("user")).getId());
		article.setCreateDate(new DateTime());
		articleService.saveArticle(article);

		model.addAttribute("success", "article " + article.getTitle() + " registered successfully");

		System.out.println("博客");
		System.out.println(article);
		return "redirect:/admin/acc/";
	}

	@RequestMapping(value = { "/edit-{id}" }, method = RequestMethod.GET)
	public String editArticle(@PathVariable Integer id, ModelMap model) {
		Article article = articleService.findById(id);
		String originContent = article.getContent();
		originContent = originContent.replaceAll("\\\\", "\\\\\\\\");
		originContent = originContent.replaceAll("\\n", "\\\\n");
		originContent = originContent.replaceAll("\\r", "\\\\r");
		originContent = originContent.replaceAll("\\00", "\\\\0");
		originContent = originContent.replaceAll("'", "\\\\'");
		originContent = originContent.replaceAll("\"", "\\\\\"");

		System.out.println(originContent);
		article.setContent(originContent);
		model.addAttribute("article", article);
		model.addAttribute("edit", true);
		return "/admin/article_edit";
	}

	@RequestMapping(value = { "/edit-{id}" }, method = RequestMethod.POST)
	public String updateArticle(Article article, ModelMap model, @PathVariable Integer id) {
		System.out.println("aricle update");
		System.out.println(article.getContent());
		article.setCreateDate(new DateTime());
		articleService.updateArticle(article);

		System.out.println(article.getContent());
		return "redirect:/admin/blog/";
	}
	
	@RequestMapping(value = { "/delete-{id}" }, method = RequestMethod.GET)
	public String deleteArticle(@PathVariable String id) {
		articleService.deleteArticleById(id);
		return "redirect:/admin/blog/";
	}
}
